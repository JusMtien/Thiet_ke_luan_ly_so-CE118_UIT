onerror {quit -f}
vlib work
vlog -work work REGISTER_FILE_5BITS.vo
vlog -work work REGISTER_FILE_5BITS.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.full_register_file_vlg_vec_tst
vcd file -direction REGISTER_FILE_5BITS.msim.vcd
vcd add -internal full_register_file_vlg_vec_tst/*
vcd add -internal full_register_file_vlg_vec_tst/i1/*
add wave /*
run -all
