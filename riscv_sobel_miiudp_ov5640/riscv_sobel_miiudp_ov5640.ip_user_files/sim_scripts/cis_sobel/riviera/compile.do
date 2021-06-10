vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xlconstant_v1_1_6
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/fifo_generator_v13_2_4

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_fifo2mig_axi_0_0/sim/cis_sobel_fifo2mig_axi_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_udp_0_0/sim/cis_sobel_udp_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_img_data_pkt_0_0/sim/cis_sobel_img_data_pkt_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_ov5640_rgb565_top_0_0/sim/cis_sobel_ov5640_rgb565_top_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_wr_ddr_fifo_0_0/sim/cis_sobel_wr_ddr_fifo_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_rd_ddr_fifo_0_0/sim/cis_sobel_rd_ddr_fifo_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/cis_sobel_mig_7series_0_0_mig_sim.v" \
"../../../bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/rtl/cis_sobel_mig_7series_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_clk_wiz_0_0/cis_sobel_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/cis_sobel/ip/cis_sobel_clk_wiz_0_0/cis_sobel_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/cis_sobel/ip/cis_sobel_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/cis_sobel/ip/cis_sobel_util_ds_buf_0_0/sim/cis_sobel_util_ds_buf_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_DVP_Capture_0_1/sim/cis_sobel_DVP_Capture_0_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_0_0/sim/cis_sobel_util_vector_logic_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_1_0/sim/cis_sobel_util_vector_logic_1_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_0_1/sim/cis_sobel_util_vector_logic_0_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_1_1/sim/cis_sobel_util_vector_logic_1_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_2_0/sim/cis_sobel_util_vector_logic_2_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_2_1/sim/cis_sobel_util_vector_logic_2_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_2_2/sim/cis_sobel_util_vector_logic_2_2.v" \
"../../../bd/cis_sobel/ip/cis_sobel_wr_fifoddr_clr_0_0/sim/cis_sobel_wr_fifoddr_clr_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_rd_fifoddr_clr_0_0/sim/cis_sobel_rd_fifoddr_clr_0_0.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_xlconstant_0_0/sim/cis_sobel_xlconstant_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_xlconstant_0_1/sim/cis_sobel_xlconstant_0_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_xlconstant_2_0/sim/cis_sobel_xlconstant_2_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_0/sim/bd_0f99_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_1/sim/bd_0f99_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_2/sim/bd_0f99_arsw_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_3/sim/bd_0f99_rsw_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_4/sim/bd_0f99_awsw_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_5/sim/bd_0f99_wsw_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_6/sim/bd_0f99_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_7/sim/bd_0f99_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_8/sim/bd_0f99_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_9/sim/bd_0f99_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_10/sim/bd_0f99_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_11/sim/bd_0f99_sarn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_12/sim/bd_0f99_srn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_13/sim/bd_0f99_sawn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_14/sim/bd_0f99_swn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_15/sim/bd_0f99_sbn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_16/sim/bd_0f99_s01mmu_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_17/sim/bd_0f99_s01tr_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_18/sim/bd_0f99_s01sic_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_19/sim/bd_0f99_s01a2s_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_20/sim/bd_0f99_sarn_1.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_21/sim/bd_0f99_srn_1.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_22/sim/bd_0f99_sawn_1.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_23/sim/bd_0f99_swn_1.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_24/sim/bd_0f99_sbn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_25/sim/bd_0f99_m00s2a_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_26/sim/bd_0f99_m00arn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_27/sim/bd_0f99_m00rn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_28/sim/bd_0f99_m00awn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_29/sim/bd_0f99_m00wn_0.sv" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_30/sim/bd_0f99_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_31/sim/bd_0f99_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/sim/bd_0f99.v" \
"../../../bd/cis_sobel/ip/cis_sobel_axi_smc_0/sim/cis_sobel_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/cis_sobel/ip/cis_sobel_rst_mig_7series_0_100M_0/sim/cis_sobel_rst_mig_7series_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_fifo2mig_axi_0_2/sim/cis_sobel_fifo2mig_axi_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/cis_sobel/ip/cis_sobel_Trash_Risc_0_0/sources_1/ip/reset_sys/sim/reset_sys.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/adv_timer_apb_if.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/apb_adv_timer.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_gpio/apb_gpio.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c/apb_i2c.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/apb_spi_master.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_uart/apb_uart.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/comparator.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_biu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_clk_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_clkgate.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_core.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_cpu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_cpu_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_dtcm_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_dtcm_ram.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu_bjp.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu_csrctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu_dpath.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu_lsuagu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu_muldiv.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_alu_rglr.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_branchslv.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_commit.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_csr.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_decode.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_disp.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_excp.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_longpwbck.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_nice.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_oitf.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_regfile.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_exu_wbck.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_ifu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_ifu_ifetch.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_ifu_ift2icb.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_ifu_litebpu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_ifu_minidec.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_irq_sync.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_itcm_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_itcm_ram.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_lsu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_lsu_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_reset_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/soc/e203_soc_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core/e203_srams.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_clint.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_gfcm.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_hclkgen.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_hclkgen_rstsync.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_main.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_mems.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_nice_core.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_perips.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_plic.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_pll.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_pllclkdiv.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/subsys/e203_subsys_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c/i2c_master_bit_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c/i2c_master_byte_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/input_stage.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_uart/io_generic_fifo.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/prescaler.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_1cyc_sram_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_AsyncResetReg.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_AsyncResetRegVec.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_AsyncResetRegVec_1.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_AsyncResetRegVec_129.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_AsyncResetRegVec_36.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_DeglitchShiftRegister.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_LevelGateway.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_ResetCatchAndSync.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_ResetCatchAndSync_2.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_aon.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_aon_lclkgen_regs.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_aon_porrst.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_aon_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_aon_wrapper.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_clint.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_clint_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/debug/sirv_debug_csr.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/debug/sirv_debug_module.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/debug/sirv_debug_ram.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/debug/sirv_debug_rom.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_expl_axi_slv.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_flash_qspi.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_flash_qspi_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_gnrl_bufs.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_gnrl_dffs.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_gnrl_icbs.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_gnrl_ram.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_hclkgen_regs.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/fab/sirv_icb1to16_bus.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/fab/sirv_icb1to2_bus.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/fab/sirv_icb1to8_bus.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/debug/sirv_jtag_dtm.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_jtaggpioport.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/mems/sirv_mrom.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/mems/sirv_mrom_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_plic_man.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_plic_top.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_pmu.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_pmu_core.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_qspi_arbiter.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_qspi_fifo.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_qspi_media.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_qspi_physical.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_queue.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_queue_1.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_repeater_6.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_rtc.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_sim_ram.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_spi_flashmap.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/general/sirv_sram_icb_ctrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_tl_repeater_5.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_tlfragmenter_qspi_1.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_tlwidthwidget_qspi.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/sirv_wdog.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/spi_master_apb_if.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/spi_master_clkgen.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/spi_master_controller.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/spi_master_fifo.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/spi_master_rx.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_spi_master/spi_master_tx.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/timer_cntrl.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/timer_module.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_uart/uart_interrupt.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_uart/uart_rx.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_uart/uart_tx.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_adv_timer/up_down_counter.v" \
"../../../bd/cis_sobel/ipshared/d464/sources_1/new/TRASH_RISC.v" \
"../../../bd/cis_sobel/ip/cis_sobel_Trash_Risc_0_0/sim/cis_sobel_Trash_Risc_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_clkdivider_0_0/sim/cis_sobel_clkdivider_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_wr_ddr_fifo_0_1/sim/cis_sobel_wr_ddr_fifo_0_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_rd_ddr_fifo_0_2/sim/cis_sobel_rd_ddr_fifo_0_2.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_4_0/sim/cis_sobel_util_vector_logic_4_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_util_vector_logic_5_0/sim/cis_sobel_util_vector_logic_5_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_img_data_pkt_0_1/sim/cis_sobel_img_data_pkt_0_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_udp_0_1/sim/cis_sobel_udp_0_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_MUX2IN1_0_1/sim/cis_sobel_MUX2IN1_0_1.v" \
"../../../bd/cis_sobel/ip/cis_sobel_MUX2IN1_0_2/sim/cis_sobel_MUX2IN1_0_2.v" \
"../../../bd/cis_sobel/ip/cis_sobel_MUX2IN1_4bit_0_0/sim/cis_sobel_MUX2IN1_4bit_0_0.v" \
"../../../bd/cis_sobel/ip/cis_sobel_icb_sobel_0_0/sim/cis_sobel_icb_sobel_0_0.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/c923" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/1ddd/hdl/verilog" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/b2d0/hdl/verilog" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/perips/apb_i2c" "+incdir+../../../../riscv_sobel_miiudp_ov5640.srcs/sources_1/bd/cis_sobel/ipshared/d464/sources_1/imports/e203/core" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cis_sobel/ip/cis_sobel_fifo_generator_0_0/sim/cis_sobel_fifo_generator_0_0.v" \
"../../../bd/cis_sobel/sim/cis_sobel.v" \

vlog -work xil_defaultlib \
"glbl.v"

