
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2^
 "H
camera_pclk_IBUF[0]_inst	camera_pclk_IBUF[0]_inst2default:default2default:default2B
 ",

IOB_X0Y103

IOB_X0Y1032default:default2default:default2?
 "?
8cis_sobel_i/util_ds_buf_0/U0/USE_BUFG.GEN_BUFG[0].BUFG_U	8cis_sobel_i/util_ds_buf_0/U0/USE_BUFG.GEN_BUFG[0].BUFG_U2default:default2default:default2H
 "2
BUFGCTRL_X0Y1
BUFGCTRL_X0Y12default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
?
?Placement Constraints Check for IO constraints: Terminal %s has IOB constraint set to TRUE, but it is either not connected to a FLOP element or the connected FLOP element could not be brought into the I/O.%s*DRC2>
 "(
qspi0_csqspi0_cs2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-8h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 15ea64d04
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:37 ; elapsed = 00:00:25 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 15ea64d04
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:38 ; elapsed = 00:00:26 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 15ea64d04
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:38 ; elapsed = 00:00:26 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 15ea64d04
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:38 ; elapsed = 00:00:26 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 14be3f971
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:00 ; elapsed = 00:00:40 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-4.217 | TNS=-724.508| WHS=-1.270 | THS=-2039.841|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 1b4f5eb17
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:22 ; elapsed = 00:00:52 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.217 | TNS=-724.171| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 17a713ef7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:22 ; elapsed = 00:00:52 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
H
3Phase 2 Router Initialization | Checksum: f5d43b0d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:22 ; elapsed = 00:00:52 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 1d192cb4c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:28 ; elapsed = 00:01:26 . Memory (MB): peak = 2444.762 ; gain = 0.0002default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
2502default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
| clk_16m_cis_sobel_clk_wiz_0_0 |clk_50m_cis_sobel_clk_wiz_0_0 |                                               cis_sobel_i/icb_sobel_0/inst/u_sobel/h_mul_tmp_reg[0][12]/D|
| clk_16m_cis_sobel_clk_wiz_0_0 |clk_50m_cis_sobel_clk_wiz_0_0 |                                               cis_sobel_i/icb_sobel_0/inst/u_sobel/h_mul_tmp_reg[0][11]/D|
| clk_16m_cis_sobel_clk_wiz_0_0 |clk_50m_cis_sobel_clk_wiz_0_0 |                                               cis_sobel_i/icb_sobel_0/inst/u_sobel/v_mul_tmp_reg[6][11]/D|
| clk_16m_cis_sobel_clk_wiz_0_0 |clk_50m_cis_sobel_clk_wiz_0_0 |                                               cis_sobel_i/icb_sobel_0/inst/u_sobel/v_mul_tmp_reg[6][12]/D|
| clk_16m_cis_sobel_clk_wiz_0_0 |clk_50m_cis_sobel_clk_wiz_0_0 |                                               cis_sobel_i/icb_sobel_0/inst/u_sobel/v_mul_tmp_reg[6][10]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.296 | TNS=-819.360| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1c43f2bcd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:43 ; elapsed = 00:08:07 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.637 | TNS=-850.507| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 113849185
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:19 ; elapsed = 00:08:28 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 113849185
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:19 ; elapsed = 00:08:28 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: eafba6b9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:25 ; elapsed = 00:08:31 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.296 | TNS=-819.360| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: f27a6a54
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:26 ; elapsed = 00:08:32 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: f27a6a54
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:26 ; elapsed = 00:08:32 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: f27a6a54
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:26 ; elapsed = 00:08:32 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 13ff34a1b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:33 ; elapsed = 00:08:36 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.292 | TNS=-816.069| WHS=-0.011 | THS=-0.011 |
2default:defaultZ35-416h px? 
?

Phase %s%s
101*constraints2
6.1.2 2default:default25
!Lut RouteThru Assignment for hold2default:defaultZ18-101h px? 
Y
DPhase 6.1.2 Lut RouteThru Assignment for hold | Checksum: 160fe4189
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:46 ; elapsed = 00:08:49 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 160fe4189
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:46 ; elapsed = 00:08:49 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
v

Phase %s%s
101*constraints2
6.2 2default:default2'
Additional Hold Fix2default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.292 | TNS=-816.069| WHS=0.018  | THS=0.000  |
2default:defaultZ35-416h px? 
I
4Phase 6.2 Additional Hold Fix | Checksum: 13e323e6c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:53 ; elapsed = 00:08:53 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
?
?The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
1142default:default2?
?	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[0]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[1]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[2]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[3]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[4]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[5]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[6]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[1]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[2]
	cis_sobel_i/wr_ddr_fifo_1/inst/wr_ddr3_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[3]
	.. and 104 more pins.
2default:defaultZ35-468h px? 
A
,Phase 6 Post Hold Fix | Checksum: 1a67e54e2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:54 ; elapsed = 00:08:54 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 140cf700c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:54 ; elapsed = 00:08:54 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 140cf700c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:54 ; elapsed = 00:08:54 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1835ca133
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:58 ; elapsed = 00:08:59 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2K
7| WNS=-4.292 | TNS=-816.069| WHS=0.018  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 1835ca133
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:59 ; elapsed = 00:08:59 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:15:59 ; elapsed = 00:08:59 . Memory (MB): peak = 2732.438 ; gain = 287.6762default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1002default:default2
542default:default2
192default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:16:052default:default2
00:09:022default:default2
2732.4382default:default2
287.6762default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
2732.4382default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:132default:default2
00:00:052default:default2
2732.4382default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/15098/Desktop/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640.runs/impl_1/cis_sobel_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:192default:default2
00:00:122default:default2
2732.4382default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_drc -file cis_sobel_wrapper_drc_routed.rpt -pb cis_sobel_wrapper_drc_routed.pb -rpx cis_sobel_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
{report_drc -file cis_sobel_wrapper_drc_routed.rpt -pb cis_sobel_wrapper_drc_routed.pb -rpx cis_sobel_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?C:/Users/15098/Desktop/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640.runs/impl_1/cis_sobel_wrapper_drc_routed.rpt?C:/Users/15098/Desktop/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640.runs/impl_1/cis_sobel_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:182default:default2
00:00:102default:default2
2732.4382default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file cis_sobel_wrapper_methodology_drc_routed.rpt -pb cis_sobel_wrapper_methodology_drc_routed.pb -rpx cis_sobel_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file cis_sobel_wrapper_methodology_drc_routed.rpt -pb cis_sobel_wrapper_methodology_drc_routed.pb -rpx cis_sobel_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?C:/Users/15098/Desktop/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640.runs/impl_1/cis_sobel_wrapper_methodology_drc_routed.rpt?C:/Users/15098/Desktop/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640/riscv_sobel_miiudp_ov5640.runs/impl_1/cis_sobel_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:552default:default2
00:00:312default:default2
3223.9412default:default2
491.5042default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file cis_sobel_wrapper_power_routed.rpt -pb cis_sobel_wrapper_power_summary_routed.pb -rpx cis_sobel_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file cis_sobel_wrapper_power_routed.rpt -pb cis_sobel_wrapper_power_summary_routed.pb -rpx cis_sobel_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
?
$Power model is not available for %s
23*power2J

pullup_TCK	(cis_sobel_i/Trash_Risc_0/inst/pullup_TCK2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2J

pullup_TDI	(cis_sobel_i/Trash_Risc_0/inst/pullup_TDI2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2J

pullup_TMS	(cis_sobel_i/Trash_Risc_0/inst/pullup_TMS2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2T
qspi0_pullup[0]	-cis_sobel_i/Trash_Risc_0/inst/qspi0_pullup[0]2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2T
qspi0_pullup[1]	-cis_sobel_i/Trash_Risc_0/inst/qspi0_pullup[1]2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2T
qspi0_pullup[2]	-cis_sobel_i/Trash_Risc_0/inst/qspi0_pullup[2]2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2T
qspi0_pullup[3]	-cis_sobel_i/Trash_Risc_0/inst/qspi0_pullup[3]2default:default8Z33-23h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1192default:default2
552default:default2
192default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:272default:default2
00:00:172default:default2
3223.9412default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
oExecuting : report_route_status -file cis_sobel_wrapper_route_status.rpt -pb cis_sobel_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file cis_sobel_wrapper_timing_summary_routed.rpt -pb cis_sobel_wrapper_timing_summary_routed.pb -rpx cis_sobel_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:112default:default2
00:00:072default:default2
3223.9412default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2n
ZExecuting : report_incremental_reuse -file cis_sobel_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2n
ZExecuting : report_clock_utilization -file cis_sobel_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file cis_sobel_wrapper_bus_skew_routed.rpt -pb cis_sobel_wrapper_bus_skew_routed.pb -rpx cis_sobel_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record