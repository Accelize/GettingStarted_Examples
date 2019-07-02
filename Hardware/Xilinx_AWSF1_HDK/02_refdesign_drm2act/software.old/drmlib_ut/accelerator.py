#!/usr/bin/env python3
import sys, os, logging, argparse, json, subprocess

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

# Configure logger
console = logging.StreamHandler()
console.setFormatter(logging.Formatter("%(levelname)-8s, %(module)-20s: %(message)s"))
console.setLevel(logging.INFO)
logging.getLogger().addHandler(console)


def parseJsonParameters(jsonPath):
    """ parseJsonParameters """
    with open(jsonPath, "r") as f:
        data = json.load(f)
        print(data)
        return data    
    return None
    

def launchAccelerator(mode, inFile, outFile, outParam, in_params):
    """ launchAccelerator """
    logger.info('argument "inFile : {inFile}" bypassed ..');
    cmd = f'sudo LD_LIBRARY_PATH=/usr/local/lib64 ./app -m {mode} -i {inFile} -o {outFile} -n {in_params["nb_boards"]} -t {in_params["session_type"]} -e {in_params["env"]} -c {in_params["coin"]}'
    logger.info(cmd)
    
    status = subprocess.run(cmd, stdout=subprocess.PIPE, universal_newlines=True, shell=True)
    logger.info(f'launchAccelerator ret={status.returncode}, output=\n{status.stdout}')
    
    out_params = { 'status': status.returncode, 'message': status.stdout}
    
    # Generate outParam File
    with open(outParam, "w") as f:
        json.dump(out_params, f)
        
    # Generate outFile
    with open(outFile, "w") as f:
        json.dump(out_params, f)
    
    return status.returncode


if __name__ == "__main__":
    # Parse the arguments
    option = argparse.ArgumentParser()
    
    option.add_argument('-m', dest="mode", type=str, required=True,
                        help="Run mode: 0: Init, 1: Process, 2:Release")
    option.add_argument('-i', dest="inFile", type=str, required=True,
                        help="Input File")
    option.add_argument('-j', dest="inParam", type=str, required=True,
                        help="Input Parameters File")
    option.add_argument('-o', dest="outFile", type=str, required=True,
                        help="Output File")
    option.add_argument('-p', dest="outParam", type=str, required=True,
                        help="Output Parameters File")                        
    option.add_argument('-v', dest="verbose", default=1, type=int,
                        help="Enable verbose mode")
    args = option.parse_args()
    console.setLevel(args.verbose)    
    parameters = parseJsonParameters(args.inParam)
    sys.exit(launchAccelerator(args.mode, args.inFile, args.outFile, args.outParam, parameters))
