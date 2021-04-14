transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Quartus/intelFPGA_lite/practice3 {D:/Quartus/intelFPGA_lite/practice3/practice3.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/intelFPGA_lite/practice3 {D:/Quartus/intelFPGA_lite/practice3/frec_divider.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/intelFPGA_lite/practice3 {D:/Quartus/intelFPGA_lite/practice3/counter.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/intelFPGA_lite/practice3 {D:/Quartus/intelFPGA_lite/practice3/BCD.v}

vlog -vlog01compat -work work +incdir+D:/Quartus/intelFPGA_lite/practice3 {D:/Quartus/intelFPGA_lite/practice3/testbench_counters.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  testbench_counters

add wave *
view structure
view signals
run -all
