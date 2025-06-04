$Generated from generate_tb.py
$
.include "/proj/cad/library/mosis/GF65_LPe/cmos10lpe_CDS_oa_dl064_11_20160415/models/YI-SM00030/Hspice/models/design.inc"

$.include dff.pex.sp $include your design
.option post runlvl=5

.param Tc=800p $CLK preiod 
.param Di=100p  $Input delay after rising edge of clock

$xi gnd! Q vdd! CLK R D design  $instantiate your design

vdd VDD! GND! 1.2v

vrst rst GND! PWL(0ps 0v 300ps 0v 350ps 1.2v 600ps 1.2v 650ps 0v) 
vclk clk GND! PULSE(0v 1.2v 0ps 50ps 50ps 'Tc/2-50ps' Tc)

$Expected Output:               D1:1011-D2:1011-   D3:-err-D4:0000-D5:0000-D6:0000-                    D7:1111-D8:-err-D9:0111-D10:1101
vinst[1] inst[1] GND! PWL(0ps 0v Di 0v 'Di+0*Tc+50ps' 0v 'Di+1*Tc' 0v 'Di+1*Tc+50ps' 0v 'Di+2*Tc' 0v 'Di+2*Tc+50ps' 0v 'Di+3*Tc' 0v 'Di+3*Tc+50ps' 0v 'Di+4*Tc' 0v 'Di+4*Tc+50ps' 0v 'Di+5*Tc' 0v 'Di+5*Tc+50ps' 0v 'Di+6*Tc' 0v)
vinst[0] inst[0] GND! PWL(0ps 0v Di 0v 'Di+0*Tc+50ps' 1.2v 'Di+1*Tc' 1.2v 'Di+1*Tc+50ps' 1.2v 'Di+2*Tc' 1.2v 'Di+2*Tc+50ps' 1.2v 'Di+3*Tc' 1.2v 'Di+3*Tc+50ps' 1.2v 'Di+4*Tc' 1.2v 'Di+4*Tc+50ps' 1.2v 'Di+5*Tc' 1.2v 'Di+5*Tc+50ps' 1.2v 'Di+6*Tc' 1.2v)

$The following lines are only to get an example of what the output should look like.

vData[0] Data[0] GND! PWL(0ps 0v Di 0v 'Di+0*Tc+50ps' 0v 'Di+1*Tc' 0v 'Di+1*Tc+50ps' 0v 'Di+2*Tc' 0v 'Di+2*Tc+50ps' 0v 'Di+3*Tc' 0v 'Di+3*Tc+50ps' 1.2v 'Di+4*Tc' 1.2v 'Di+4*Tc+50ps' 1.2v 'Di+5*Tc' 1.2v 'Di+5*Tc+50ps' 1.2v 'Di+6*Tc' 1.2v)
vData[1] Data[1] GND! PWL(0ps 0v Di 0v 'Di+0*Tc+50ps' 1.2v 'Di+1*Tc' 1.2v 'Di+1*Tc+50ps' 1.2v 'Di+2*Tc' 1.2v 'Di+2*Tc+50ps' 1.2v 'Di+3*Tc' 1.2v 'Di+3*Tc+50ps' 0v 'Di+4*Tc' 0v 'Di+4*Tc+50ps' 0v 'Di+5*Tc' 0v 'Di+5*Tc+50ps' 0v 'Di+6*Tc' 0v)
vData[2] Data[2] GND! PWL(0ps 0v Di 0v 'Di+0*Tc+50ps' 1.2v 'Di+1*Tc' 1.2v 'Di+1*Tc+50ps' 0v 'Di+2*Tc' 0v 'Di+2*Tc+50ps' 1.2v 'Di+3*Tc' 1.2v 'Di+3*Tc+50ps' 0v 'Di+4*Tc' 0v 'Di+4*Tc+50ps' 1.2v 'Di+5*Tc' 1.2v 'Di+5*Tc+50ps' 1.2v 'Di+6*Tc' 1.2v)
vData[3] Data[3] GND! PWL(0ps 0v Di 0v 'Di+0*Tc+50ps' 0v 'Di+1*Tc' 0v 'Di+1*Tc+50ps' 0v 'Di+2*Tc' 0v 'Di+2*Tc+50ps' 0v 'Di+3*Tc' 0v 'Di+3*Tc+50ps' 1.2v 'Di+4*Tc' 1.2v 'Di+4*Tc+50ps' 1.2v 'Di+5*Tc' 1.2v 'Di+5*Tc+50ps' 1.2v 'Di+6*Tc' 1.2v)

.tr 10ps '8*Tc'  $Run for number of input clock cycles plus 2

.end

