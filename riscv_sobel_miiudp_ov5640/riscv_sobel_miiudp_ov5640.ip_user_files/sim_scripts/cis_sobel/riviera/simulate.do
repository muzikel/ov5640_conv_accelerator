onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+cis_sobel -L xilinx_vip -L xil_defaultlib -L xpm -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_6 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L fifo_generator_v13_2_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cis_sobel xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {cis_sobel.udo}

run -all

endsim

quit -force
