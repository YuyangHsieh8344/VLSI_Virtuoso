$
.include "/proj/cad/library/mosis/GF65_LPe/cmos10lpe_CDS_oa_dl064_11_20160415/models/YI-SM00030/Hspice/models/design.inc"

$.include dff.pex.sp $include your design
.option post runlvl=5

.param Tc=800p $CLK preiod 
.param Di=100p  $Input delay after rising edge of clock

$xi gnd! Q vdd! CLK R D design  $instantiate your design

TPL GEN_VDD vdd VDD! GND! 1.2v

TPL GEN_RST rst 
TPL GEN_CLK clk

$Expected Output:               D1:1011-D2:1011-   D3:-err-D4:0000-D5:0000-D6:0000-                    D7:1111-D8:-err-D9:0111-D10:1101
TPL GEN_INP inst[1]          000000
TPL GEN_INP inst[0]          111111

$The following lines are only to get an example of what the output should look like.

TPL GEN_INP Data[0]        000111
TPL GEN_INP Data[1]        111000
TPL GEN_INP Data[2]        101011
TPL GEN_INP Data[3]        000111

TPL GEN_RUN .tr 10ps 2  $Run for number of input clock cycles plus 2

.end

