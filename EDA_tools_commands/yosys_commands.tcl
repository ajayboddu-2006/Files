# read modules from Verilog file
read_verilog add_4bit.v

# elaborate design hierarchy
hierarchy -check -top top

# translate processes to netlists
proc

# mapping to internal cell library
techmap

# mapping flip-flops to NangateOpenCellLibrary_typical.lib 
# for eg. always block
dfflibmap -liberty toy.lib 

# mapping logic to NangateOpenCellLibrary_typical.lib 
# for eg. assign block
abc -liberty toy.lib
 
# remove unused cells and wires
clean

# Write the current design to a Verilog file
write_verilog -noattr  synth_ripple_carry_adder.v 
