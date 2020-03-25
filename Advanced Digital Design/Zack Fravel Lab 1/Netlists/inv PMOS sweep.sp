* Zack Fravel Lab 1 010646947
* inv.sp

* Parameters and models
*------------------------------------------------
.param SUPPLY=1.1
.param PWIDTH = 4
.option scale=25n
.include '../lib/hspice_nom.include'
.temp 70
.option post
 
* Simulation netlist
*------------------------------------------------
VCC a gnd DC 0.55
M1	out	a	gnd	gnd	NMOS_VTG	W=12 L=12 
+ AS=20 PS=18 AD=20 PD=18
M2	out	a	vdd	vdd	PMOS_VTG	W=PWIDTH L=16
+ AS=40 PS=26 AD=40 PD=26

* Stimulus
*------------------------------------------------
.dc PWIDTH 4 32 1
.end 

