* Zack Fravel Lab 1 010646947
* nand2.sp

* Parameters and models
*------------------------------------------------
.param SUPPLY=0.6
.option scale=25n
.include '../lib/hspice_nom.include'
.temp 70
.option post
 
* Simulation netlist
*------------------------------------------------
Vdd	vdd	gnd	'SUPPLY'
V1	in1	gnd	PULSE  0 'SUPPLY' 0ps 100ps 100ps 1000ps 2000ps
V2 in2 gnd PULSE   0 'SUPPLY' 50ps 100ps 100ps 1000ps 2000ps

M1 out in1 vdd vdd PMOS_VTG W=2 L=16
M2 out in2 vdd vdd PMOS_VTG W=2 L=16
M3 out in1 s gnd NMOS_VTG W=2 L=12
M4 s in2 gnd gnd NMOS_VTG W=2 L=12


* Stimulus
*------------------------------------------------
.tran 0.5ps 400ps
.end

