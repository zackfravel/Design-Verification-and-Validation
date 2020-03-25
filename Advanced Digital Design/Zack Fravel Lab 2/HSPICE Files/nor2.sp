* Zack Fravel Lab 2 010646947
* nor2.sp

* Parameters and models
*------------------------------------------------
.param SUPPLY=1.1
.option scale=45n
.include '../lib/hspice_nom.include'
.temp 70
.option post
 
* Simulation netlist
*------------------------------------------------
Vdd	vdd	gnd	'SUPPLY'
V1	in1	gnd	PULSE  0 'SUPPLY' 0ps 0ps 0ps 100ps 200ps
V2  in2 gnd PULSE  0 'SUPPLY' 50ps 0ps 0ps 100ps 200ps

M1 s in1 vdd vdd PMOS_VTG W=2 L=1.2
M2 out in2 s vdd PMOS_VTG W=2 L=1.2
M3 out in1 gnd gnd NMOS_VTG W=2 L=1.2
M4 out in2 gnd gnd NMOS_VTG W=2 L=1.2


* Stimulus
*------------------------------------------------
.tran 0.5ps 400ps
.end

