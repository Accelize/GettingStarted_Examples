# Accelize Getting Started
## Xilinx Vitis example designs
### 02_hls_kernel

| Name                       | Description                                                      | Status      |
| -------------------------- |----------------------------------------------------------------- |:----------: |
| rtl_adder_pipes_c | Same design as Xilinx RTL adder but with HLS adder and DRM IPs | Tested OK with Xilinx Vitis 2021.2/HDK v7     |
| rtl_adder_pipes_c_dual_clock | Same design as rtl_adder_pipes_c but with dual clocks | Tested OK with Xilinx Vitis 2021.2/HDK v7     |

# rtl_adder_pipes_c
![rtl_adder_pipes_c](rtl_adder_pipes_c.png)

# rtl_adder_pipes_c_dual_clock
This design uses two different clocks for the User IPs and the DRM IPs.
The DRM IPs run in a separated clock domain, with a lower frequency (100 MHz in this example).
This configuraton helps application developper to close their timing by limiting the impact of the DRM IPs on the overall design.
This design aslo implements registers to simplify timing closure when IPs are located in different chip SLRs.
