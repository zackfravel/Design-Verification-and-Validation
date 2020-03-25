###################################################################

# Created by write_sdc on Wed Dec  6 16:48:41 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -period 1  -waveform {0 0.5}
