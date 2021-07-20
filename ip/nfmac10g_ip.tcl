# ip

source adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip_xilinx.tcl

adi_ip_create nfmac10g
adi_ip_files nfmac10g [list \
  "../src/hdl/axis2xgmii.v" \
  "../src/hdl/padding_ctrl.v" \
  "../src/hdl/rst_mod.v" \
  "../src/hdl/rx.v" \
  "../src/hdl/tx.v" \
  "../src/hdl/xgmii2axis.v" \
  "../src/hdl/xgmii_includes.vh" \
  "../src/xdc/nfmac10g.xdc" ]

adi_ip_properties_lite nfmac10g
ipx::remove_all_bus_interface [ipx::current_core]
ipx::save_core [ipx::current_core]
