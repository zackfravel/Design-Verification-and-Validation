set_host_options -max_cores 6

set_app_var link_library "/home/zpfravel/Desktop/fft8_nangate/lib/db/NangateOpenCellLibrary_typical_ecsm.db"
set_app_var target_library "/home/zpfravel/Desktop/fft8_nangate/lib/db/NangateOpenCellLibrary_typical_ecsm.db"
set_app_var symbol_library "generic.sdb"

define_design_lib work -path ./work

set topname fft8
set verilogs [glob $topname.v]

set myPeriod_ns 40
set myClk clk

analyze -format verilog  $verilogs

elaborate $topname 

current_design $topname

link

create_clock -period $myPeriod_ns $myClk

compile_ultra

redirect $topname.timing.dc.rpt {report_timing}
redirect $topname.area.dc.rpt {report_area}
redirect $topname.power.dc.rpt {report_power}

write_sdc $topname.sdc
write -format verilog -hierarchy -output $topname.syn.v

quit

