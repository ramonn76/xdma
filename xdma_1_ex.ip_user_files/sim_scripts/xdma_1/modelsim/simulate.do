onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_2 -L xdma_v4_1_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.xdma_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {xdma_1.udo}

run -all

quit -force