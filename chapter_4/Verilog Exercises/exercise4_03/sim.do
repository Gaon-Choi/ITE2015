# simulation do file
# step1: Move to the folder
# cd C:/DDCA/ch4/project6

# step2: do sim.do
# compile and simulation
vlib work
vlog tb.sv hw.sv

# simulation
vsim -t ps work.tb

add wave /a
add wave /y
run -all
# step3: quit # exit the modelsim