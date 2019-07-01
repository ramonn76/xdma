vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/xdma_v4_1_2

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap xdma_v4_1_2 questa_lib/msim/xdma_v4_1_2

vlog -work xilinx_vip -64 -sv -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L xilinx_vip "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_7vx.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx_8k.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx_16k.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx_cpl.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx_rep.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx_rep_8k.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_bram_7vx_req.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_init_ctrl_7vx.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_pipe_lane.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_pipe_misc.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_pipe_pipeline.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_top.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_force_adapt.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_clock.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_drp.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_eq.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_rate.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_reset.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_sync.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_user.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pipe_wrapper.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_qpll_drp.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_qpll_reset.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_qpll_wrapper.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_rxeq_scan.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_gt_wrapper.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_gt_top.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_gt_common.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_gtx_cpllpd_ovrd.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_tlp_tph_tbl_7vx.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/source/xdma_1_pcie3_ip_pcie_3_0_7vx.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_0/sim/xdma_1_pcie3_ip.v" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_1/sim/xdma_v4_1_2_blk_mem_64_reg_be.v" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/ip_2/sim/xdma_v4_1_2_blk_mem_64_noreg_be.v" \

vlog -work xdma_v4_1_2 -64 -sv -L xilinx_vip "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/hdl/xdma_v4_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L xilinx_vip "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/xdma_v4_1/hdl/verilog/xdma_1_dma_bram_wrap.sv" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/xdma_v4_1/hdl/verilog/xdma_1_core_top.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../xdma_1_ex.srcs/sources_1/ip/xdma_1/sim/xdma_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

