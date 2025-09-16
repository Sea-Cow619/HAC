# create new HLS project 'baseline'
open_project baseline

# set top function for synthesis
set_top fir

# add source files
add_files fir.cpp
add_files fir.h

# add testbench file and golden reference
add_files -tb fir_test.cpp
add_files -tb out.gold.dat
add_files -tb input.dat

# create new solution
open_solution "solution1"

# Set Kria SOM as target part
set_part  {xck26-sfvc784-2LV-c}

# Set clock period to 10 ns
create_clock -period 10
