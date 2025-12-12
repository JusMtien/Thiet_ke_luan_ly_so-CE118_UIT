vlog -work work D:/TKLLS/Lab1/simulation/modelsim/lab1_wave.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LAB1_vlg_vec_tst
onerror {resume}
add wave {LAB1_vlg_vec_tst/i1/CLK}
add wave {LAB1_vlg_vec_tst/i1/EN}
add wave {LAB1_vlg_vec_tst/i1/Q0}
add wave {LAB1_vlg_vec_tst/i1/Q1}
add wave {LAB1_vlg_vec_tst/i1/Q2}
add wave {LAB1_vlg_vec_tst/i1/SW}
add wave {LAB1_vlg_vec_tst/i1/SW[2]}
add wave {LAB1_vlg_vec_tst/i1/SW[1]}
add wave {LAB1_vlg_vec_tst/i1/SW[0]}
run -all
