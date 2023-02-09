onerror {quit -f}
vlib work
vlog -work work 7Seg.vo
vlog -work work 7Seg.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.seg7_vlg_vec_tst
vcd file -direction 7Seg.msim.vcd
vcd add -internal seg7_vlg_vec_tst/*
vcd add -internal seg7_vlg_vec_tst/i1/*
add wave /*
run -all
