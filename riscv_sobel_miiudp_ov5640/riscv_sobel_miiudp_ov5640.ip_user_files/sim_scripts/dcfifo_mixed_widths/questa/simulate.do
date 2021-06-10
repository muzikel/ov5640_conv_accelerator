onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dcfifo_mixed_widths_opt

do {wave.do}

view wave
view structure
view signals

do {dcfifo_mixed_widths.udo}

run -all

quit -force
