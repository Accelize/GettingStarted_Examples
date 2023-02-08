To use gent_dt.tcl script:
```bash
git clone https://github.com/Xilinx/device-tree-xlnx
cd device-tree-xlnx
git checkout xlnx_rel_v<vitis_version>

### if it has not been done previously, source vitis environment 
source <PATH_TO_VITIS_2022.1_INSTALL>/settings64.sh 

xsct ./gen_dt.tcl <path_to_xsa> <output_dir> <path_to_device-tree-xlnx-git>
```

Use the generated device tree file in <output_dir/pl.dtsi>

