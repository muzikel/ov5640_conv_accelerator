# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/new/DDR3.xdc

# XDC: imports/new/camera_ov5640.xdc

# XDC: imports/new/ethernet.xdc

# XDC: imports/new/TrashCtrl.xdc

# XDC: new/debug.xdc

# IP: ip/sync_fifo_1024x32b/sync_fifo_1024x32b.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==sync_fifo_1024x32b || ORIG_REF_NAME==sync_fifo_1024x32b} -quiet] -quiet

# IP: ip/wr_ddr3_fifo/wr_ddr3_fifo.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] -quiet

# IP: ip/rd_ddr3_fifo/rd_ddr3_fifo.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] -quiet

# Block Designs: bd/cis_sobel/cis_sobel.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel || ORIG_REF_NAME==cis_sobel} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_fifo2mig_axi_0_0/cis_sobel_fifo2mig_axi_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_fifo2mig_axi_0_0 || ORIG_REF_NAME==cis_sobel_fifo2mig_axi_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_udp_0_0/cis_sobel_udp_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_udp_0_0 || ORIG_REF_NAME==cis_sobel_udp_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_img_data_pkt_0_0/cis_sobel_img_data_pkt_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_img_data_pkt_0_0 || ORIG_REF_NAME==cis_sobel_img_data_pkt_0_0} -quiet] -quiet

# IP: ip/sync_fifo_1024x32b/sync_fifo_1024x32b.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==sync_fifo_1024x32b || ORIG_REF_NAME==sync_fifo_1024x32b} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_ov5640_rgb565_top_0_0/cis_sobel_ov5640_rgb565_top_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_ov5640_rgb565_top_0_0 || ORIG_REF_NAME==cis_sobel_ov5640_rgb565_top_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_wr_ddr_fifo_0_0/cis_sobel_wr_ddr_fifo_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_wr_ddr_fifo_0_0 || ORIG_REF_NAME==cis_sobel_wr_ddr_fifo_0_0} -quiet] -quiet

# IP: ip/wr_ddr3_fifo/wr_ddr3_fifo.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_rd_ddr_fifo_0_0/cis_sobel_rd_ddr_fifo_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_rd_ddr_fifo_0_0 || ORIG_REF_NAME==cis_sobel_rd_ddr_fifo_0_0} -quiet] -quiet

# IP: ip/rd_ddr3_fifo/rd_ddr3_fifo.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_mig_7series_0_0 || ORIG_REF_NAME==cis_sobel_mig_7series_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_clk_wiz_0_0/cis_sobel_clk_wiz_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_clk_wiz_0_0 || ORIG_REF_NAME==cis_sobel_clk_wiz_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_ds_buf_0_0/cis_sobel_util_ds_buf_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_ds_buf_0_0 || ORIG_REF_NAME==cis_sobel_util_ds_buf_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_DVP_Capture_0_1/cis_sobel_DVP_Capture_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_DVP_Capture_0_1 || ORIG_REF_NAME==cis_sobel_DVP_Capture_0_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_0_0/cis_sobel_util_vector_logic_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_0_0 || ORIG_REF_NAME==cis_sobel_util_vector_logic_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_1_0/cis_sobel_util_vector_logic_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_1_0 || ORIG_REF_NAME==cis_sobel_util_vector_logic_1_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_0_1/cis_sobel_util_vector_logic_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_0_1 || ORIG_REF_NAME==cis_sobel_util_vector_logic_0_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_1_1/cis_sobel_util_vector_logic_1_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_1_1 || ORIG_REF_NAME==cis_sobel_util_vector_logic_1_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_2_0/cis_sobel_util_vector_logic_2_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_2_0 || ORIG_REF_NAME==cis_sobel_util_vector_logic_2_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_2_1/cis_sobel_util_vector_logic_2_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_2_1 || ORIG_REF_NAME==cis_sobel_util_vector_logic_2_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_2_2/cis_sobel_util_vector_logic_2_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_2_2 || ORIG_REF_NAME==cis_sobel_util_vector_logic_2_2} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_wr_fifoddr_clr_0_0/cis_sobel_wr_fifoddr_clr_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_wr_fifoddr_clr_0_0 || ORIG_REF_NAME==cis_sobel_wr_fifoddr_clr_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_rd_fifoddr_clr_0_0/cis_sobel_rd_fifoddr_clr_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_rd_fifoddr_clr_0_0 || ORIG_REF_NAME==cis_sobel_rd_fifoddr_clr_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_xlconstant_0_0/cis_sobel_xlconstant_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_xlconstant_0_0 || ORIG_REF_NAME==cis_sobel_xlconstant_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_xlconstant_0_1/cis_sobel_xlconstant_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_xlconstant_0_1 || ORIG_REF_NAME==cis_sobel_xlconstant_0_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_xlconstant_2_0/cis_sobel_xlconstant_2_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_xlconstant_2_0 || ORIG_REF_NAME==cis_sobel_xlconstant_2_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/cis_sobel_axi_smc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_axi_smc_0 || ORIG_REF_NAME==cis_sobel_axi_smc_0} -quiet] -quiet

# Block Designs: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/bd_0f99.bd
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_0/bd_0f99_one_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_1/bd_0f99_psr_aclk_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_2/bd_0f99_arsw_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_3/bd_0f99_rsw_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_4/bd_0f99_awsw_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_5/bd_0f99_wsw_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_6/bd_0f99_bsw_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_7/bd_0f99_s00mmu_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_8/bd_0f99_s00tr_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_9/bd_0f99_s00sic_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_10/bd_0f99_s00a2s_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_11/bd_0f99_sarn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_12/bd_0f99_srn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_13/bd_0f99_sawn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_14/bd_0f99_swn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_15/bd_0f99_sbn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_16/bd_0f99_s01mmu_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_17/bd_0f99_s01tr_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_18/bd_0f99_s01sic_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_19/bd_0f99_s01a2s_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_20/bd_0f99_sarn_1.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_21/bd_0f99_srn_1.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_22/bd_0f99_sawn_1.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_23/bd_0f99_swn_1.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_24/bd_0f99_sbn_1.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_25/bd_0f99_m00s2a_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_26/bd_0f99_m00arn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_27/bd_0f99_m00rn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_28/bd_0f99_m00awn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_29/bd_0f99_m00wn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_30/bd_0f99_m00bn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_31/bd_0f99_m00e_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/cis_sobel/ip/cis_sobel_rst_mig_7series_0_100M_0/cis_sobel_rst_mig_7series_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_rst_mig_7series_0_100M_0 || ORIG_REF_NAME==cis_sobel_rst_mig_7series_0_100M_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_fifo2mig_axi_0_2/cis_sobel_fifo2mig_axi_0_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_fifo2mig_axi_0_2 || ORIG_REF_NAME==cis_sobel_fifo2mig_axi_0_2} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_Trash_Risc_0_0/cis_sobel_Trash_Risc_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_Trash_Risc_0_0 || ORIG_REF_NAME==cis_sobel_Trash_Risc_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_Trash_Risc_0_0/sources_1/ip/reset_sys/reset_sys.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==reset_sys || ORIG_REF_NAME==reset_sys} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_clkdivider_0_0/cis_sobel_clkdivider_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_clkdivider_0_0 || ORIG_REF_NAME==cis_sobel_clkdivider_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_wr_ddr_fifo_0_1/cis_sobel_wr_ddr_fifo_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_wr_ddr_fifo_0_1 || ORIG_REF_NAME==cis_sobel_wr_ddr_fifo_0_1} -quiet] -quiet

# IP: ip/wr_ddr3_fifo/wr_ddr3_fifo.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_rd_ddr_fifo_0_2/cis_sobel_rd_ddr_fifo_0_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_rd_ddr_fifo_0_2 || ORIG_REF_NAME==cis_sobel_rd_ddr_fifo_0_2} -quiet] -quiet

# IP: ip/rd_ddr3_fifo/rd_ddr3_fifo.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_4_0/cis_sobel_util_vector_logic_4_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_4_0 || ORIG_REF_NAME==cis_sobel_util_vector_logic_4_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_util_vector_logic_5_0/cis_sobel_util_vector_logic_5_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_util_vector_logic_5_0 || ORIG_REF_NAME==cis_sobel_util_vector_logic_5_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_img_data_pkt_0_1/cis_sobel_img_data_pkt_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_img_data_pkt_0_1 || ORIG_REF_NAME==cis_sobel_img_data_pkt_0_1} -quiet] -quiet

# IP: ip/sync_fifo_1024x32b/sync_fifo_1024x32b.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==sync_fifo_1024x32b || ORIG_REF_NAME==sync_fifo_1024x32b} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_udp_0_1/cis_sobel_udp_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_udp_0_1 || ORIG_REF_NAME==cis_sobel_udp_0_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_MUX2IN1_0_1/cis_sobel_MUX2IN1_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_MUX2IN1_0_1 || ORIG_REF_NAME==cis_sobel_MUX2IN1_0_1} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_MUX2IN1_0_2/cis_sobel_MUX2IN1_0_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_MUX2IN1_0_2 || ORIG_REF_NAME==cis_sobel_MUX2IN1_0_2} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_MUX2IN1_4bit_0_0/cis_sobel_MUX2IN1_4bit_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_MUX2IN1_4bit_0_0 || ORIG_REF_NAME==cis_sobel_MUX2IN1_4bit_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_icb_sobel_0_0/cis_sobel_icb_sobel_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_icb_sobel_0_0 || ORIG_REF_NAME==cis_sobel_icb_sobel_0_0} -quiet] -quiet

# IP: bd/cis_sobel/ip/cis_sobel_fifo_generator_0_0/cis_sobel_fifo_generator_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_fifo_generator_0_0 || ORIG_REF_NAME==cis_sobel_fifo_generator_0_0} -quiet] -quiet

# XDC: ip/sync_fifo_1024x32b/sync_fifo_1024x32b.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==sync_fifo_1024x32b || ORIG_REF_NAME==sync_fifo_1024x32b} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/wr_ddr3_fifo/wr_ddr3_fifo.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/wr_ddr3_fifo/wr_ddr3_fifo_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/rd_ddr3_fifo/rd_ddr3_fifo.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/rd_ddr3_fifo/rd_ddr3_fifo_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/sync_fifo_1024x32b/sync_fifo_1024x32b.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==sync_fifo_1024x32b || ORIG_REF_NAME==sync_fifo_1024x32b} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/wr_ddr3_fifo/wr_ddr3_fifo.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/wr_ddr3_fifo/wr_ddr3_fifo_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/rd_ddr3_fifo/rd_ddr3_fifo.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/rd_ddr3_fifo/rd_ddr3_fifo_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/constraints/cis_sobel_mig_7series_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==cis_sobel_mig_7series_0_0 || ORIG_REF_NAME==cis_sobel_mig_7series_0_0} -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_mig_7series_0_0/cis_sobel_mig_7series_0_0/user_design/constraints/cis_sobel_mig_7series_0_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_clk_wiz_0_0/cis_sobel_clk_wiz_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_clk_wiz_0_0 || ORIG_REF_NAME==cis_sobel_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_clk_wiz_0_0/cis_sobel_clk_wiz_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_clk_wiz_0_0 || ORIG_REF_NAME==cis_sobel_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_clk_wiz_0_0/cis_sobel_clk_wiz_0_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_util_ds_buf_0_0/cis_sobel_util_ds_buf_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_util_ds_buf_0_0 || ORIG_REF_NAME==cis_sobel_util_ds_buf_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_util_ds_buf_0_0/cis_sobel_util_ds_buf_0_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_1/bd_0f99_psr_aclk_0_board.xdc
# DONT_TOUCH constraint suppressed by parent sub-design file.

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_1/bd_0f99_psr_aclk_0.xdc
# DONT_TOUCH constraint suppressed by parent sub-design file.

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_2/bd_0f99_arsw_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_3/bd_0f99_rsw_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_4/bd_0f99_awsw_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_5/bd_0f99_wsw_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_6/bd_0f99_bsw_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_10/bd_0f99_s00a2s_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_11/bd_0f99_sarn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_12/bd_0f99_srn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_13/bd_0f99_sawn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_14/bd_0f99_swn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_15/bd_0f99_sbn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_19/bd_0f99_s01a2s_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_20/bd_0f99_sarn_1_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_21/bd_0f99_srn_1_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_22/bd_0f99_sawn_1_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_23/bd_0f99_swn_1_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_24/bd_0f99_sbn_1_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_25/bd_0f99_m00s2a_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_26/bd_0f99_m00arn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_27/bd_0f99_m00rn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_28/bd_0f99_m00awn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_29/bd_0f99_m00wn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/bd_0/ip/ip_30/bd_0f99_m00bn_0_ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_axi_smc_0/ooc.xdc

# XDC: bd/cis_sobel/ip/cis_sobel_rst_mig_7series_0_100M_0/cis_sobel_rst_mig_7series_0_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_rst_mig_7series_0_100M_0 || ORIG_REF_NAME==cis_sobel_rst_mig_7series_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_rst_mig_7series_0_100M_0/cis_sobel_rst_mig_7series_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_rst_mig_7series_0_100M_0 || ORIG_REF_NAME==cis_sobel_rst_mig_7series_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_Trash_Risc_0_0/sources_1/ip/reset_sys/reset_sys_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==reset_sys || ORIG_REF_NAME==reset_sys} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_Trash_Risc_0_0/sources_1/ip/reset_sys/reset_sys.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==reset_sys || ORIG_REF_NAME==reset_sys} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/wr_ddr3_fifo/wr_ddr3_fifo.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/wr_ddr3_fifo/wr_ddr3_fifo_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==wr_ddr3_fifo || ORIG_REF_NAME==wr_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/rd_ddr3_fifo/rd_ddr3_fifo.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/rd_ddr3_fifo/rd_ddr3_fifo_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==rd_ddr3_fifo || ORIG_REF_NAME==rd_ddr3_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: ip/sync_fifo_1024x32b/sync_fifo_1024x32b.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==sync_fifo_1024x32b || ORIG_REF_NAME==sync_fifo_1024x32b} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_fifo_generator_0_0/cis_sobel_fifo_generator_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_fifo_generator_0_0 || ORIG_REF_NAME==cis_sobel_fifo_generator_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/ip/cis_sobel_fifo_generator_0_0/cis_sobel_fifo_generator_0_0_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==cis_sobel_fifo_generator_0_0 || ORIG_REF_NAME==cis_sobel_fifo_generator_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/cis_sobel/cis_sobel_ooc.xdc