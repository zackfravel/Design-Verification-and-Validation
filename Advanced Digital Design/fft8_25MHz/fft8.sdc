###################################################################

# Created by write_sdc on Mon Dec  4 00:00:19 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -period 40  -waveform {0 20}
