onerror {quit -f}
vlib work
vlog -work work REGISTER_FILE_5BITS.vo
vlog -work work REGISTER_FILE_5BITS.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Mips_vlg_vec_tst
vcd file -direction REGISTER_FILE_5BITS.msim.vcd
vcd add -internal Mips_vlg_vec_tst/*
vcd add -internal Mips_vlg_vec_tst/i1/*
add wave /*
run -all
