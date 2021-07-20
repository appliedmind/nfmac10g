MODULE=nfmac10g
M_DEPS += ../src/hdl/$(MODULE).v
M_DEPS += ../src/hdl/axis2xgmii.v
M_DEPS += ../src/hdl/padding_ctrl.v
M_DEPS += ../src/hdl/rst_mod.v
M_DEPS += ../src/hdl/rx.v
M_DEPS += ../src/hdl/tx.v
M_DEPS += ../src/hdl/xgmii2axis.v
M_DEPS += ../src/hdl/xgmii_includes.vh

M_VIVADO := vivado -mode batch -source

M_FLIST := *.cache
M_FLIST += *.data
M_FLIST += *.xpr
M_FLIST += *.log
M_FLIST += component.xml
M_FLIST += *.jou
M_FLIST +=  xgui
M_FLIST += *.ip_user_files
M_FLIST += *.srcs
M_FLIST += *.hw
M_FLIST += *.sim
M_FLIST += .Xil


all: $(MODULE).xpr
sim: $(MODULE)_test

clean:clean-all

clean-all:
	rm -rf $(M_FLIST)

$(MODULE).xpr: $(M_DEPS)
	-rm -rf $(M_FLIST)
	$(M_VIVADO) $(MODULE)_ip.tcl  >> $(MODULE)_ip.log 2>&1

.PHONY: all clean clean-all sim
