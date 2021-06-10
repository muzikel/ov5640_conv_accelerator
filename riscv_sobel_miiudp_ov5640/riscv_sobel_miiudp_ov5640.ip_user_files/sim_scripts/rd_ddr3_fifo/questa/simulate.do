onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rd_ddr3_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {rd_ddr3_fifo.udo}

run -all

quit -force
