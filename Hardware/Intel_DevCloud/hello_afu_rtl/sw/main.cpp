// Copyright(c) 2017, Intel Corporation
//
// Redistribution  and  use  in source  and  binary  forms,  with  or  without
// modification, are permitted provided that the following conditions are met:
//
// * Redistributions of  source code  must retain the  above copyright notice,
//   this list of conditions and the following disclaimer.
// * Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
// * Neither the name  of Intel Corporation  nor the names of its contributors
//   may be used to  endorse or promote  products derived  from this  software
//   without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,  BUT NOT LIMITED TO,  THE
// IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMEdesc.  IN NO EVENT  SHALL THE COPYRIGHT OWNER  OR CONTRIBUTORS BE
// LIABLE  FOR  ANY  DIRECT,  INDIRECT,  INCIDENTAL,  SPECIAL,  EXEMPLARY,  OR
// CONSEQUENTIAL  DAMAGES  (INCLUDING,  BUT  NOT LIMITED  TO,  PROCUREMENT  OF
// SUBSTITUTE GOODS OR SERVICES;  LOSS OF USE,  DATA, OR PROFITS;  OR BUSINESS
// INTERRUPTION)  HOWEVER CAUSED  AND ON ANY THEORY  OF LIABILITY,  WHETHER IN
// CONTRACT,  STRICT LIABILITY,  OR TORT  (INCLUDING NEGLIGENCE  OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,  EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

#include <iostream>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <uuid/uuid.h>
#include <opae/enum.h>
#include <opae/access.h>
#include <opae/mmio.h>
#include <opae/properties.h>
#include <opae/utils.h>

// State from the AFU's JSON file, extracted using OPAE's afu_json_mgr script
#include "afu_json_info.h"

// Accelize DRMLib
#include "accelize/drm.h"
using namespace Accelize::DRM;

int usleep(unsigned);

#define UIP1_BASE_ADDR          0x10000
#define DRM_BASE_ADDR           0x20000

#define HELLO_AFU_ID             AFU_ACCEL_UUID  // Defined in afu_json_info.h
#define SCRATCH_REG              0X80
#define SCRATCH_VALUE            0x0123456789ABCDEF
#define SCRATCH_RESET            0
#define BYTE_OFFSET              8

#define AFU_DFH_REG              0x0
#define AFU_ID_LO                0x8 
#define AFU_ID_HI                0x10
#define AFU_NEXT                 0x18
#define AFU_RESERVED             0x20

static int s_error_count = 0;

/* Type definitions */
typedef struct {
    uint32_t uint[16];
} cache_line;

// Global Variables
fpga_handle afc_handle;

void print_err(const char *s, fpga_result res)
{
    fprintf(stderr, "Error %s: %s\n", s, fpgaErrStr(res));
}

/*
 * macro to check return codes, print error message, and goto cleanup label
 * NOTE: this changes the program flow (uses goto)!
 */
#define ON_ERR_EXIT(res, desc)                      \
    do {                                            \
        if ((res) != FPGA_OK) {                     \
            print_err((desc), (res));               \
            fpgaClose(afc_handle);                  \
            fpgaDestroyProperties(&filter);         \
        }                                           \
    } while (0)


/*
 * DRMLib Read Callback Function
 */
int32_t drm_read_callback(uint32_t addr, uint32_t *value)
{   
    int32_t ret = fpgaReadMMIO32(afc_handle, 0, DRM_BASE_ADDR+(addr*4), value);
    if(ret != 0) {
        std::cout << __FUNCTION__ << ": Unable to read from the fpga ! ret = " << ret << std::endl;
        return 1;
    }
    return 0;
}

/*
 * DRMLib Write Callback Function
 */
int32_t drm_write_callback(uint32_t addr, uint32_t value)
{
    int32_t ret = fpgaWriteMMIO32(afc_handle, 0, DRM_BASE_ADDR+(addr*4), value);
    if(ret != 0) {
        std::cout << __FUNCTION__ << ": Unable to write to the fpga ! ret=" << ret << std::endl;
        return 1;
    }
    return 0;
}

/*
 * Entry Point
 */
int main(int argc, char *argv[])
{
    fpga_properties    filter = NULL;
    fpga_token         afc_token;
    fpga_guid          guid;
    uint32_t          num_matches;

    fpga_result     res = FPGA_OK;

    if (uuid_parse(HELLO_AFU_ID, guid) < 0) {
        fprintf(stderr, "Error parsing guid '%s'\n", HELLO_AFU_ID);
        return -1;
    }    

    /* Look for AFC with MY_AFC_ID */
    res = fpgaGetProperties(NULL, &filter);
    ON_ERR_EXIT(res, "creating properties object");

    res = fpgaPropertiesSetObjectType(filter, FPGA_ACCELERATOR);
    ON_ERR_EXIT(res, "setting object type");

    res = fpgaPropertiesSetGUID(filter, guid);
    ON_ERR_EXIT(res, "setting GUID");

    /* TODO: Add selection via BDF / device ID */
    res = fpgaEnumerate(&filter, 1, &afc_token, 1, &num_matches);
    ON_ERR_EXIT(res, "enumerating AFCs");
    if (num_matches < 1) {
        fprintf(stderr, "AFC not found.\n");
        res = fpgaDestroyProperties(&filter);
        return FPGA_INVALID_PARAM;
    }
    /* Open AFC and map MMIO */
    res = fpgaOpen(afc_token, &afc_handle, 0);
    ON_ERR_EXIT(res, "opening AFC");

    res = fpgaMapMMIO(afc_handle, 0, NULL);
    ON_ERR_EXIT(res, "mapping MMIO space");

    printf("Running Test\n");
    uint64_t rreg=0;

    // Print AFU Info
    printf("\n>>> Print AFU Info\n");
    for(uint32_t i=0; i<0x12; i+=4) {
        int ret = fpgaReadMMIO64(afc_handle, 0, (i*2), &rreg);
        uint32_t rreg1 = (uint32_t) rreg;
        uint32_t rreg2 = (uint32_t) (rreg >> 32);
        printf("[ret=%d] i=0x%X Reg=0x%X Reg=0x%X\n", ret, i, rreg2, rreg1);
    }
    /* Reset AFC */
    res = fpgaReset(afc_handle);
    ON_ERR_EXIT(res, "resetting AFC");
    
//ACCELIZE DRMLIB CODE AREA START
    DrmManager *pDrmManag = new DrmManager(
        std::string("conf.json"),
        std::string("cred.json"),
        [&]( uint32_t  offset, uint32_t * value) {      /*Read DRM register*/
            return  drm_read_callback(offset, value);
        },
        [&]( uint32_t  offset, uint32_t value) {        /*Write DRM register*/
            return drm_write_callback(offset, value);
        },
        [&]( const  std::string & err_msg) {
           std::cerr  << err_msg << std::endl;
        }
    );
    std::cout << "[DRMLIB] Start Session .." << std::endl;
    pDrmManag->activate();
//ACCELIZE DRMLIB CODE AREA STOP

    sleep(3);
    
    // Check IP Activation status
    uint64_t reg = 0;
    res = fpgaReadMMIO64(afc_handle, 0, UIP1_BASE_ADDR, &reg);
    if(reg==1)
       printf("FPGA Design IPs successfully activated\n");
    else {
        printf("[ERROR] Unable to activate FPGA Design IPs\n");
        s_error_count++;
    }

//ACCELIZE DRMLIB CODE AREA START
    std::cout << "[DRMLIB] Stop Session .." << std::endl;
    pDrmManag->deactivate();
//ACCELIZE DRMLIB CODE AREA STOP

    /* Unmap MMIO space */
    res = fpgaUnmapMMIO(afc_handle, 0);
    ON_ERR_EXIT(res, "unmapping MMIO space");

    /* Release accelerator */
    res = fpgaClose(afc_handle);
    ON_ERR_EXIT(res, "closing AFC");

    /* Destroy properties object */
    res = fpgaDestroyProperties(&filter);
    ON_ERR_EXIT(res, "destroying properties object");

    return s_error_count;

}
