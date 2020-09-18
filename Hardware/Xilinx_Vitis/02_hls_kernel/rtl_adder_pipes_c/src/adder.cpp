//Includes
#include <hls_stream.h>
#include <ap_int.h>
#include "ap_axi_sdata.h"

typedef ap_axiu<32,0,0,0> datap;

extern "C" {
void adder(  int inc, 
             int size,
             hls::stream<datap> &in,  
             hls::stream<datap> &out, 
             hls::stream<datap> &activation_code0,
             hls::stream<datap> &activation_code1,
             hls::stream<datap> &activation_code2,
             hls::stream<datap> &activation_code3,
             hls::stream<datap> &metering_event)
{
#pragma HLS interface axis port=in
#pragma HLS interface axis port=out
#pragma HLS interface axis port=activation_code0
#pragma HLS interface axis port=activation_code1
#pragma HLS interface axis port=activation_code2
#pragma HLS interface axis port=activation_code3
#pragma HLS interface axis port=metering_event
#pragma HLS interface s_axilite port=inc bundle=control
#pragma HLS interface s_axilite port=size bundle=control
#pragma HLS interface s_axilite port=return bundle=control     

    unsigned int expected_ac3      = 0x7E745E52;
    unsigned int expected_ac2      = 0x8F0CF2F3;
    unsigned int expected_ac1      = 0x6C304A2F;
    unsigned int expected_ac0      = 0x18DB0CE0;
    
    datap temp_metering;
    
    // Read latest Activation Code Value
    datap temp_ac0 = activation_code0.read();
    datap temp_ac1 = activation_code1.read();
    datap temp_ac2 = activation_code2.read();
    datap temp_ac3 = activation_code3.read();
    
    // Check Activation Code Value
    int temp_inc;
    if( (temp_ac0.data==expected_ac0) && 
        (temp_ac1.data==expected_ac1) && 
        (temp_ac2.data==expected_ac2) && 
        (temp_ac3.data==expected_ac3)) {
          temp_inc = inc;
          temp_metering.data=1;
    }
    else {
        temp_inc = 0;
        temp_metering.data=0;
    }

    for(int i=0; i <size ; i++) {

        // Read input data
        datap temp_in = in.read();

        // Add INC value
        temp_in.data = temp_in.data + temp_inc;
        
        // Write output data
        out.write(temp_in);
        
    }
    
    // Increment metering counter
    metering_event.write(temp_metering);
}
}
