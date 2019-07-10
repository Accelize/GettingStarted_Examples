/**********
Copyright (c) 2019, Accelize
All rights reserved.
**********/

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>
#include <xclhal2.h>

#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#include <CL/opencl.h>

// Accelize DRMLib
#include "accelize/drmc.h"

#define DRM_BASE_ADDRESS 	0x1C00000
#define DATA_SIZE 			4096
#define INCR_VALUE 			10
    
#define test_retcode(err_condition, str) \
	if(err_condition) { \
	    printf("%s: FAILED\n", str); \
	    return EXIT_FAILURE; \
    }

xclDeviceHandle boardHandler;

/*
 * DRMLib Read Callback Function
 */
int32_t drm_read_callback(uint32_t addr, uint32_t *value, void* user_p)
{   
    int ret = (int)xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+addr, value, 4);
    if(ret <= 0) {
        printf("[%s]: Unable to read from the fpga ! ret = %d\n", __FUNCTION__, ret);
        return 1;
    }
    return 0;
}

/*
 * DRMLib Write Callback Function
 */
int32_t drm_write_callback(uint32_t addr, uint32_t value, void* user_p)
{
    int ret = (int)xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+addr, &value, 4);
    if(ret <= 0) {
		printf("[%s]: Unable to write to the fpga ! ret = %d\n", __FUNCTION__, ret);
        return 1;
    }
    return 0;
}

/*
 * DRMLib Asynchronous Error Callback Function
 */
void asynch_error( const char* err_msg, void* user_p ) {
	fprintf( stderr, "%s", err_msg );
}

/*
 * load_file_to_memory
 */
uint32_t load_file_to_memory(const char *filename, char **result)
{
    uint32_t size = 0;
    FILE *f = fopen(filename, "rb");
    if (f == NULL)
    {
	*result = NULL;
	return -1; // -1 means file opening fail
    }
    fseek(f, 0, SEEK_END);
    size = ftell(f);
    fseek(f, 0, SEEK_SET);
    *result = (char *)malloc(size+1);
    if (size != fread(*result, sizeof(char), size, f))
    {
	free(*result);
	return -2; // -2 means file reading fail
    }
    fclose(f);
    (*result)[size] = 0;
    return size;
}

/*
 * Entry Point
 */
int main(int argc, char **argv) 
{     	
	cl_platform_id platform_id ;
    cl_device_id device_id ;
    cl_context context;
    cl_event readevent;
    cl_int ret;
    int inBuff[DATA_SIZE], outBuff[DATA_SIZE];
    uint32_t buffSize = DATA_SIZE;
    uint32_t incr = INCR_VALUE;
    int i=0;
    
    if (argc != 2) {
        printf("Usage: %s <XCLBIN File>\n", argv[0]);
        return EXIT_FAILURE;
    }
    
    for(i=0; i<DATA_SIZE; i++) {
		inBuff[i] = 0xB0000000+i;
		outBuff[i] = 0;
	}
    
    /* Get platform/device information */
    ret = clGetPlatformIDs(1, &platform_id, NULL);
    
    // Connect to a compute device
    ret = clGetDeviceIDs( platform_id, CL_DEVICE_TYPE_ACCELERATOR, 1, &device_id, NULL);                   
    
    /* Create OpenCL Context */
    context = clCreateContext( 0, 1, &device_id, NULL, NULL, &ret);

    char *fpga_bin;
	size_t fpga_bin_size;
	fpga_bin_size = load_file_to_memory(argv[1], &fpga_bin);   
	test_retcode(fpga_bin_size<0, "load kernel from xclbin");
	 
	/* Program Device */
	cl_program program = clCreateProgramWithBinary(context, 1,
		(const cl_device_id* ) &device_id, &fpga_bin_size,
		(const unsigned char**) &fpga_bin, NULL, &ret);
	test_retcode(ret!=CL_SUCCESS, "program the FPGA from xclbin");
	
	// Init xclhal2 library
    if(xclProbe() < 1) {
        printf("[ERROR] xclProbe failed ...\n");
        return -1;
    }
    boardHandler = xclOpen(0, "xclhal2_logfile.log", XCL_ERROR);
    if(boardHandler == NULL) {
        printf("[ERROR] xclOpen failed ...\n");
        return -1;
    }
    
//ACCELIZE DRMLIB CODE AREA START 
	// Instantiate DrmManager
	DrmManager *drm_manager = NULL;
	int drmmng_ctx = 0;

	if ( DrmManager_alloc(
			&drm_manager,
			// Configuration files
			"./conf.json",
			"./cred.json",
			// Callbacks
			drm_read_callback,
			drm_write_callback,
			asynch_error,
			// Contextual pointer
			&drmmng_ctx ) 
		) {
		fprintf( stderr, "%s", drm_manager->error_message );
	}

    printf("[DRMLIB] Start Session ...\n");
    if ( DrmManager_activate( drm_manager, false ) )
		fprintf( stderr, "%s", drm_manager->error_message );
//ACCELIZE DRMLIB CODE AREA STOP
    
    /* Create command queue */
    cl_command_queue command_queue = clCreateCommandQueue(context, device_id, CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE|CL_QUEUE_PROFILING_ENABLE, &ret);
    
 	/* Kernel Exec*/
	cl_kernel inKrnl = clCreateKernel(program, "krnl_input_stage_rtl", &ret);
	test_retcode(ret!=CL_SUCCESS, "clCreateKernel inKrnl");
	
	cl_kernel addKrnl = clCreateKernel(program, "krnl_adder_stage_rtl", &ret);
	test_retcode(ret!=CL_SUCCESS, "clCreateKernel addKrnl");
	
	cl_kernel outKrnl = clCreateKernel(program, "krnl_output_stage_rtl", &ret);
	test_retcode(ret!=CL_SUCCESS, "clCreateKernel outKrnl");


    /* Transferring Data to/from the FPGA Device */
    // Move Buffer over input vector    
    cl_mem input_buffer[1];
    input_buffer[0] = clCreateBuffer(context,
		CL_MEM_READ_ONLY |  CL_MEM_USE_HOST_PTR ,
		sizeof(int)*DATA_SIZE,
		inBuff,
		&ret);
	test_retcode(ret!=CL_SUCCESS, "Create input_buffer");
		
	cl_mem output_buffer[1];
    output_buffer[0] = clCreateBuffer(context,
		CL_MEM_WRITE_ONLY |  CL_MEM_USE_HOST_PTR ,
		sizeof(int)*DATA_SIZE,
		outBuff,
		&ret);
	test_retcode(ret!=CL_SUCCESS, "Createoutput_buffer");

	ret = clEnqueueMigrateMemObjects(command_queue, 
		1, 
		input_buffer, 
		0, 
		0, 
		NULL, 
		NULL);
	test_retcode(ret!=CL_SUCCESS, "clEnqueueMigrateMemObjects input_buffer");
		
	// Set the kernel arguments
	ret = clSetKernelArg(inKrnl,  1, sizeof(cl_uint), &buffSize);
	test_retcode(ret!=CL_SUCCESS, "inKrnl clSetKernelArg inSize");
	ret = clSetKernelArg(inKrnl,  0, sizeof(cl_mem), &input_buffer);
	test_retcode(ret!=CL_SUCCESS, "inKrnl clSetKernelArg inBuff");	
	ret = clSetKernelArg(outKrnl,  1, sizeof(cl_uint), &buffSize);
	test_retcode(ret!=CL_SUCCESS, "outKrnl clSetKernelArg outSize");
	ret = clSetKernelArg(outKrnl, 0, sizeof(cl_mem), &output_buffer);
	test_retcode(ret!=CL_SUCCESS, "outKrnl clSetKernelArg outBuff");	
	ret = clSetKernelArg(addKrnl,  0, sizeof(cl_uint), &incr);
	test_retcode(ret!=CL_SUCCESS, "addKrnl clSetKernelArg INCR");
	ret = clSetKernelArg(addKrnl,  1, sizeof(cl_uint), &buffSize);
	test_retcode(ret!=CL_SUCCESS, "addKrnl clSetKernelArg inSize");	
	
	/* Run Command Queue */	
	ret = clEnqueueTask(command_queue, inKrnl, 0, NULL, NULL);
	test_retcode(ret!=CL_SUCCESS, "clEnqueueTask inKrnl");
	ret = clEnqueueTask(command_queue, addKrnl, 0, NULL, NULL); 
	test_retcode(ret!=CL_SUCCESS, "clEnqueueTask addKrnl");
	ret = clEnqueueTask(command_queue, outKrnl, 0, NULL, NULL); 
	test_retcode(ret!=CL_SUCCESS, "clEnqueueTask outKrnl");	
	
	clFinish(command_queue); 
	
	/* read data Back */
	ret = clEnqueueMigrateMemObjects(command_queue, 
		1, 
		output_buffer, 
		CL_MIGRATE_MEM_OBJECT_HOST, 
		0, 
		NULL, 
		NULL);
	test_retcode(ret!=CL_SUCCESS, "clEnqueueMigrateMemObjects output_buffer");
	clFinish(command_queue); 
		
//ACCELIZE DRMLIB CODE AREA START
    printf("[DRMLIB] Stop Session ...\n");
    if ( DrmManager_deactivate( drm_manager, false ) )
		fprintf( stderr, "%s", drm_manager->error_message );

	// In the C case, the "DrmManager" needs also to be freed to deallocate
	// associated resources.
	if ( DrmManager_free( &drm_manager ) )
		fprintf( stderr, "%s", drm_manager->error_message );
//ACCELIZE DRMLIB CODE AREA STOP
	
	clReleaseCommandQueue(command_queue);
	clReleaseContext(context);
	clReleaseMemObject(input_buffer[0]);
	clReleaseMemObject(output_buffer[0]);
	clReleaseProgram(program);
	clReleaseKernel(inKrnl);
	clReleaseKernel(addKrnl);
	clReleaseKernel(outKrnl);
	
	// Check Results
	int err_cnt=0;
	for(i=0; i<DATA_SIZE; i++) {
		if(outBuff[i] != (inBuff[i]+INCR_VALUE)){
			printf("Error: Result mismatch i=%d CPU Result=0x%X Device result=0x%X\n",i, (inBuff[i]+INCR_VALUE), outBuff[i]);
			err_cnt++;
		}
	}
	
	if(err_cnt)
		printf("TEST FAILED\n");
	else
		printf("TEST PASSED\n");
	
    return err_cnt;
}

