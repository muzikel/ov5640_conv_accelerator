onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SQRT_opt

do {wave.do}

view wave
view structure
view signals

do {SQRT.udo}

run -all

quit -force
