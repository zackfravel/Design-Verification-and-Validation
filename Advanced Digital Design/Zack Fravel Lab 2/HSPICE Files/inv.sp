* Zack Fravel Lab 2 010646947
* inv.sp

* Parameters and models
*------------------------------------------------
.param SUPPLY=1.0
.option scale=45n
.include '../lib/hspice_nom.include'
.temp 70
.option post
 
* Simulation netlist
*------------------------------------------------
Vdd	vdd	gnd	'SUPPLY'
Vin	a	gnd	PULSE	0 'SUPPLY' 50ps 0ps 0ps 100ps 200ps


M1	y	a	gnd	gnd	NMOS_VTG	W=2	L=1.2
+ AS=20 PS=18 AD=20 PD=18

M2	y	a	vdd	vdd	PMOS_VTG	W=2	L=1.2
+ AS=40 PS=26 AD=40 PD=26

* Stimulus
*------------------------------------------------
.tran 0.1ps 80ps

.measure tpdr 							* rising prop delay
	+ TRIG v(c) VAL='SUPPLY/2' FALL=1
	+ TARG v(d) VAL='SUPPLY/2' RISE=1
	
.measure tpdf 							* falling prop delay
	+ TRIG v(c) VAL='SUPPLY/2' RISE=1
	+ TARG v(d) VAL='SUPPLY/2' FALL=1
	
.measure tpd param='(tpdf/tpdr)' 		* value to be divided by PMOS Width

.end

