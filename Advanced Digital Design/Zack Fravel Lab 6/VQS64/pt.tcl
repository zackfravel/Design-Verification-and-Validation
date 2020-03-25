suppress_message "RC-004 RC-008 RC-009 PTE-060"

set target_library "lib/db/NangateOpenCellLibrary_typical_ecsm.db"
set link_library "* lib/db/NangateOpenCellLibrary_typical_ecsm.db"

set topname VQS64_4

set myPeriod_ns 5
set myClk [list g_inClk]

read_verilog ${topname}.v

current_design $topname

link

create_clock -period $myPeriod_ns $myClk

set_ideal_network [get_port $myClk]

read_parasitics $topname.spef -keep_capacitive_coupling

complete_net_parasitics -complete_with zero
report_annotated_parasitics -check

set power_enable_analysis TRUE

set_switching_activity -static_probability 0.5 -toggle_rate 0.15 -base_clock $myClk [remove_from_collection [all_inputs] $myClk]
set_switching_activity -static_probability 0.5 -toggle_rate 0.15 -base_clock $myClk -type registers -hierarchy

update_timing
report_timing -group $myClk -capacitance -transition_time  > $topname.timing.pt.rpt

update_power
report_power >> $topname.power.pt.rpt

exit
