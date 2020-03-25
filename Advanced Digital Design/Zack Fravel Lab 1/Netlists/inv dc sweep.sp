* Zack Fravel Lab 1 010646947
* inv.sp

* Parameters and models
*------------------------------------------------
.param SUPPLY=1.1
.option scale=25n
.include '../lib/hspice_nom.include'
.temp 70
.option post
 
* Simulation netlist
*------------------------------------------------
Vdd	vdd	gnd	'SUPPLY'
Vin	a	gnd	PULSE	0 'SUPPLY' 50ps 0ps 0ps 100ps 200ps
M1	out	a	gnd	gnd	NMOS_VTG	W=2	L=12 
+ AS=20 PS=18 AD=20 PD=18
M2	out	a	vdd	vdd	PMOS_VTG	W=2	L=16
+ AS=40 PS=26 AD=40 PD=26

* Stimulus
*------------------------------------------------
.dc Vin 0 1.1 0.05
.end

