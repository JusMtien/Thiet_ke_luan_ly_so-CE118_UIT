onerror {quit -f}
vlib work
vlog -work work Multiplier.vo
vlog -work work Multiplier.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FULL_DATAPATH_CONTROLER_vlg_vec_tst
vcd file -direction Multiplier.msim.vcd
vcd add -internal FULL_DATAPATH_CONTROLER_vlg_vec_tst/*
vcd add -internal FULL_DATAPATH_CONTROLER_vlg_vec_tst/i1/*
add wave /*
run -all
