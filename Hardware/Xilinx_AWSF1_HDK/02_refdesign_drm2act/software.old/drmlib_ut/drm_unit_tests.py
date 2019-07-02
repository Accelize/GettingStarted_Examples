from metering_call import MeteringService
from datetime import datetime
import time
import logging
import random
import os
import filecmp
import uuid
from Utils.UtilFile import delete_folder
expected = {'udid': "", 'session': ""}
RET_SUCCESS = 1
RET_ERROR = 0
logger = logging.getLogger("generic_update")

def pretty_print(data):
    logger.info("--------------------------------------------------------")
    for key, value in data.iteritems():
        logger.info("%20s = [%s]" % (key, value))
    logger.info("--------------------------------------------------------")

# TODO: Make it a fixture
def check_data_consistency(data):
    """
    Verify that data returned from metering service are consistent with the accelerator ran
    => Access keys must be the user ones
    => boardType should match the tested one
    => UDID should match the tested one
    => Creation and modification date should match the current time (+/- 6 hours)
    => Session ID should match the created one
    :return: RET_ERROR on error, RET_SUCCESS on success
    """
    max_time_interval = 6*3600 # 6 Hours
    creation_time = datetime.strptime(data['created'], "%Y-%m-%dT%H:%M:%S.%fZ")
    modification_time = datetime.strptime(data['modified'], "%Y-%m-%dT%H:%M:%S.%fZ")
    current_time = datetime.utcnow()

    if data['udid'] != expected['udid']:
        logger.error("Accelerator UAID [%s] != expected UAID [%s]" % (data['udid'], expected['udid']))
        return RET_ERROR
    if data['session'] != expected['session']:
        logger.error("Accelerator session ID [%s] != expected session ID [%s]" % (data['session'], expected['session']))
        return RET_ERROR

    if (current_time - creation_time).total_seconds() > max_time_interval:
        logger.error(
            "Accelerator creation date [%s] > current date [%s]" % (creation_time, current_time))
        return RET_ERROR
    if (current_time - modification_time).total_seconds() > max_time_interval:
        logger.error(
            "Accelerator modification date [%s] > current date [%s]" % (modification_time, current_time))
        return RET_ERROR

    return RET_SUCCESS


def get_metering_data(met_service):
    """
    Retrieve data from metering service and validate data consistency
    :param met_service: handler to the metering service
    :param expected: expected metering values
    :return: 1 on success
    """
    data = met_service.metering_last_information({'session': expected['session']})
    pretty_print(data)
    ret = check_data_consistency(data)
    return ret, data


def wait_metering_update(met_service):
    """
    Wait for 6 minutes (interval between two metering information update)
    :return: nothing
    """
    metering_update_interval = met_service.metering_license_timeout()['timeout']
    metering_update_interval += int(metering_update_interval/10)
    logger.debug("metering_update_interval = [%s]" % metering_update_interval)
    for i in xrange(metering_update_interval, 0, -1):
        logger.debug("Waiting for metering information update (~ %d sec left)" % i)
        time.sleep(1)


def parse_accelerator_results(results_json):
    """
    Parse the JSON output of accelerator 'Process' command
    :param results_json: JSON output of accelerator process command
    :return: RET_SUCCESS/RET_ERROR, Bandwidth_MBs
    """
    ret = RET_ERROR
    logger.debug("bandwidth (MB/s) = [%s]" % results_json[0]['bandwidth (MB/s)'])
    logger.debug("status           = [%s]" % results_json[1]['app']['status'])
    if results_json[1]['app']['status'] == 0:
        ret = RET_SUCCESS
    return ret, results_json[0]['bandwidth (MB/s)']


def test_accelerator_loopback(myaccel, nb_mbytes):
    myuuid = str(uuid.uuid4())
    ret = RET_SUCCESS
    fsize = int(nb_mbytes * 1024.0 * 1024.0)
    input_file_path = os.path.join('/dev/shm', myuuid+'input_file.bin')
    output_file_path = os.path.join('/dev/shm', myuuid+'output_file.bin')

    logger.debug("Testing accelerator loopback (N=%d bytes) ..." % fsize)

    # Generate file
    logger.debug("Generating file (size=%d)..." % fsize)
    with open(input_file_path, 'wb') as fout:
        fout.write(os.urandom(fsize))  # N*1MB

    # Send file
    logger.debug("Sending file...")
    results = myaccel.process(info_dict=True, file_in=input_file_path, file_out=output_file_path)
    ret, bw = parse_accelerator_results(results)
    if ret == RET_ERROR:
        logger.error("myaccel.process error : [%s]" % results[0]['app']['msg'])
        return ret

    # Verify file
    logger.debug("Comparing file...")
    if not filecmp.cmp(input_file_path, output_file_path):
        logger.error("Files are differents")
        ret = RET_ERROR
    delete_folder(input_file_path)
    delete_folder(output_file_path)
    return ret, fsize


def test_metering_initialization(met_service):
    """
     Session is started, no coins consumed, data are consitent
    :return:
    """
    logger.debug("Testing metering initialization ...")
    ret, data = get_metering_data(met_service)
    return ret


def test_metering_generate_n_coins(myaccel, met_service, nb_mbytes, sum_coins_per_mb, previous_bytes_sent):
    """
     Sending file of size N, checking that N coins are consumed and that session is still active
    :return:
    """
    ret = RET_SUCCESS
    ret, fsize = test_accelerator_loopback(myaccel, nb_mbytes)
    if ret == RET_ERROR:
        return ret, fsize

    # Verify Coins
    expected_coins = 1 + ((previous_bytes_sent + fsize)/(1024*1024))*sum_coins_per_mb
    logger.debug("Verifying Generated coins value...(expecting %d coins)" % expected_coins)
    wait_metering_update(met_service)
    ret, last_data = get_metering_data(met_service)

    if last_data['metering'] != expected_coins:
        logger.error("Sent [%d] bytes: current coins [%d] != expected coins [%d]" %
                     (fsize, last_data['metering'], expected_coins))
        ret = RET_ERROR

    # Verify Session Status
    logger.debug("Verifying Session Status...")
    #assert last_data['close'] == False
    if last_data['close']:
        logger.error("Session is closed")
        ret = RET_ERROR

    return ret, (fsize+previous_bytes_sent)


def test_session_closure(met_service, previous_bytes_sent, sum_coins_per_mb):
    """
     Session is closed, no more coins consumed
    :return:
    """
    ret = RET_SUCCESS
    logger.debug("Testing session closure ...")
    ret, last_data = get_metering_data(met_service)
    if ret == RET_ERROR:
        return ret

    # Verify Coins
    expected_coins = 1 + ((previous_bytes_sent) / (1024 * 1024))*sum_coins_per_mb
    logger.debug("Verifying Generated coins value...(expecting %d coins)" % expected_coins)
    if last_data['metering'] != expected_coins:
        logger.error("Number of generated coins changed after session closure before=[%s] after=[%s]" %
                     (expected_coins, last_data['metering']))
        ret = RET_ERROR

    # Verify Session Status
    logger.debug("Verifying Session Status...")
    if not last_data['close']:
        logger.error("Session not closed")
        ret = RET_ERROR

    return ret


def test_synchronous(myaccel, tpl_instance, management, met_service, sum_coins_per_mb):
    """
     Synchronous Tests
    :return:
    """
    ret = RET_SUCCESS
    result_table = {}
    try:
        # Start CSP Instance
        myaccel.start(stop_mode='keep', host_env=tpl_instance)

        # Get Instance data
        instance_ip = str(myaccel.host.url).split("/")[-1]
        instance_data = management.get_accelerator_information_on_host(instance_ip)
        pretty_print(instance_data)
        expected['udid'] = instance_data['udid']
        expected['session'] = instance_data['session']

        # Test 1: Initialisation
        logger.info("Starting Test 1: Metering Initialisation ...")
        ret = test_metering_initialization(met_service)
        if ret == RET_ERROR:
            logger.error("Test 1: Initialisation       => FAILURE")
            result_table['Test 1: Metering Initialisation'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 1: Initialisation       => SUCCESS")
            result_table['Test 1: Metering Initialisation'] = "SUCCESS"

        print result_table

        # Test 2: Send data to generate 1 coin
        logger.info("Starting Test 2: Send data to generate 1 coin ...")
        ret, byte_count = test_metering_generate_n_coins(myaccel, met_service, 0.5, sum_coins_per_mb, 0)
        if ret == RET_ERROR:
            logger.error("Test 2: Send data to generate 1 coin       => FAILURE")
            result_table['Test 2: Send data to generate 1 coin'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 2: Send data to generate 1 coin       => SUCCESS")
            result_table['Test 2: Send data to generate 1 coin'] = "SUCCESS"

        print result_table

        # Test 3: Send data to generate N coins. N random between 2 and 10
        logger.info("Starting Test 3: Send data to generate N coins. N random between 2 and 20 ...")
        nb_mbytes = random.randint(2, 20)
        ret, byte_count = test_metering_generate_n_coins(myaccel, met_service, nb_mbytes, sum_coins_per_mb, byte_count)
        if ret == RET_ERROR:
            logger.error("Test 3: Send data to generate N coins       => FAILURE")
            result_table['Test 3: Send data to generate N coins. N random between 2 and 20'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 3: Send data to generate N coins       => SUCCESS")
            result_table['Test 3: Send data to generate N coins. N random between 2 and 20'] = "SUCCESS"

        print result_table

        # Test 4: Send data to generate 0 coins
        logger.info("Starting Test 4: Send data to generate 0 coins ...")
        ret, byte_count = test_metering_generate_n_coins(myaccel, met_service, 0.1, sum_coins_per_mb, byte_count)
        if ret == RET_ERROR:
            logger.error("Test 4: Send data to generate 0 coins       => FAILURE")
            result_table['Test 4: Send data to generate 0 coins'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 4: Send data to generate 0 coins       => SUCCESS")
            result_table['Test 4: Send data to generate 0 coins'] = "SUCCESS"

        print result_table

        # Test 5: Close Session, check that no more coins are consumed
        logger.info("Starting Test 5: Close Session, check that no more coins are consumed ...")
        myaccel.stop(stop_mode='keep')
        wait_metering_update(met_service)
        ret = test_session_closure(met_service, byte_count, sum_coins_per_mb)
        if ret == RET_ERROR:
            logger.error("Test 5: Close Session       => FAILURE")
            result_table['Test 5: Close Session'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 5: Close Session       => SUCCESS")
            result_table['Test 5: Close Session'] = "SUCCESS"

        print result_table

    except Exception as exp:
        logger.exception(exp)
        ret = RET_ERROR
    finally:
        # Terminate CSP Instance
        myaccel.stop(stop_mode='term')

    return ret, result_table


def test_asynchronous(myaccel, tpl_instance, management, met_service, sum_coins_per_mb):
    """
     Asynchronous Tests
    :return:
    """
    ret = RET_SUCCESS
    result_table = {}
    try:
        # Start CSP Instance
        myaccel.start(stop_mode='keep', host_env=tpl_instance)

        # Get Instance data
        instance_ip = str(myaccel.host.url).split("/")[-1]
        instance_data = management.get_accelerator_information_on_host(instance_ip)
        pretty_print(instance_data)
        expected['udid'] = instance_data['udid']
        expected['session'] = instance_data['session']

        # Test 1: Initialisation
        logger.info("Starting Test 1: Metering Initialisation ...")
        ret = test_metering_initialization(met_service)
        if ret == RET_ERROR:
            logger.error("Test 1: Initialisation       => FAILURE")
            result_table['Test 1: Metering Initialisation'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 1: Initialisation       => SUCCESS")
            result_table['Test 1: Metering Initialisation'] = "SUCCESS"

        # Test 2: Send data to generate N coins. N random between 2 and 10, No coins check
        logger.info("Starting Test 2: Send data to generate N coins. N random between 2 and 20, No coins check ...")
        nb_mbytes = random.randint(2, 20)
        ret, byte_count = test_accelerator_loopback(myaccel, nb_mbytes)
        if ret == RET_ERROR:
            logger.error("Test 2: Send data to generate N coins       => FAILURE")
            result_table['Test 2: Send data to generate N coins'] = "FAILURE"
            return RET_ERROR, result_table
        else:
            logger.info("Test 2: Send data to generate N coins       => SUCCESS")
            result_table['Test 2: Send data to generate N coins'] = "SUCCESS"

        # Test 3: Close Session, check that coins are consumed without wait_update
        logger.info("Starting Test 3: Close Session, check that coins are consumed without wait_update ...")
        myaccel.stop(stop_mode='keep')
        ret = test_session_closure(met_service, byte_count, sum_coins_per_mb)
        if ret == RET_ERROR:
            logger.error("Test 3: Close Session       => FAILURE")
            result_table['Test 3: Close Session'] = "FAILURE"
            return ret, result_table
        else:
            logger.info("Test 3: Close Session       => SUCCESS")
            result_table['Test 3: Close Session'] = "SUCCESS"

    except Exception as exp:
        logger.exception(exp)
        ret = RET_ERROR
    finally:
        # Terminate CSP Instance
        myaccel.stop(stop_mode='term')

    return ret, result_table


def drm_validation(myaccel, accelerator_name, tpl_instance, management):
    ret = RET_SUCCESS
    result_table = {}
    result_table['A. Accelerator Metering'] = "N/A"
    result_table['B. DRM Synchronous Tests'] = "N/A"
    result_table['C. DRM Asynchronous Tests'] = "N/A"

    # Get target environment
    tgt_env = management.configuration_list['env']
    logger.info('Target Environment = [%s]' % tgt_env)

    # Get Metering Service Handler
    met_service = MeteringService(user_type='admin', env=tgt_env) # user_type = 'admin', 'user' ; env = 'Prod', 'Dev'

    # Compute SUM of all IPs metering
    sum_coins_per_mbyte = 0
    try:
        for met_ip, met_ip_prop in management.configuration['metering'][0].iteritems():
            sum_coins_per_mbyte += int((met_ip_prop['COINS_PER_TRG']*(1024.0*1024.0))/(2**met_ip_prop['DATA_VOLUME_TRG_PW2']))
        logger.info("sum_coins_per_mbyte = [%d]" % sum_coins_per_mbyte)
    except Exception as exp:
        logger.exception(exp)
        result_table['A. Accelerator Metering'] = "Unable to compute accelerator metering information"
        return RET_ERROR, result_table
    result_table['A. Accelerator Metering'] = "Accelerator metering information = %d coins per mbyte" % sum_coins_per_mbyte

    logger.info("Starting DRM Synchronous Tests ...")
    ret, result_table['B. DRM Synchronous Tests'] = test_synchronous(myaccel, tpl_instance, management, met_service, sum_coins_per_mbyte)
    if ret == RET_ERROR:
        logger.error("DRM Synchronous Tests       => FAILURE")
        return RET_ERROR, result_table
    else:
        logger.info("DRM Synchronous Tests       => SUCCESS")

    print result_table

    logger.info("Starting DRM Asynchronous Tests ...")
    ret, result_table['C. DRM Asynchronous Tests'] = test_asynchronous(myaccel, tpl_instance, management, met_service, sum_coins_per_mbyte)
    if ret == RET_ERROR:
        logger.error("DRM Asynchronous Tests       => FAILURE")
        return RET_ERROR, result_table
    else:
        logger.info("DRM Asynchronous Tests       => SUCCESS")

    print result_table
    return RET_SUCCESS, result_table
