set_app_var search_path ". $::env(PDK_DIR)/osu_soc/lib/files $synopsys_root/libraries/syn/"
set_app_var link_library "* gscl45nm.db" "dw_foundation.sldb"
set_app_var target_library "gscl45nm.db"
set_app_var symbol_library "generic.sdb"

define_design_lib work -path ./work

set topname FPGen
set systemverilogs [glob verilog/*{.sv,.v}]

set myPeriod_ns 0.5
set myClk clk

analyze -format sverilog  $systemverilogs

elaborate $topname 

current_design $topname

link

create_clock -period $myPeriod_ns clk

compile_ultra

redirect $topname.timing.dc.rpt {report_timing}
redirect $topname.area.dc.rpt {report_area}
redirect $topname.power.dc.rpt {report_power}

write_sdc $topname.sdc
write -format verilog -hierarchy -output $topname.syn.v

quit

