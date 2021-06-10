onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cis_sobel_opt

do {wave.do}

view wave
view structure
view signals

do {cis_sobel.udo}

run -all

quit -force
