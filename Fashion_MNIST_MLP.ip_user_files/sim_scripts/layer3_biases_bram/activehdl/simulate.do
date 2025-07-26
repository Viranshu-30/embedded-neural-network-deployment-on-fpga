transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+layer3_biases_bram  -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.layer3_biases_bram xil_defaultlib.glbl

do {layer3_biases_bram.udo}

run 1000ns

endsim

quit -force
