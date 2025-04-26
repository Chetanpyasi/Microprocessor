# Clock constraint (100 MHz clock input on Zedboard)
set_property PACKAGE_PIN Y9 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports {clk}]

# Reset constraint (mapped to BTN_CENTER button on Zedboard)
set_property PACKAGE_PIN N15 [get_ports {reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

# Map debug_out[7:0] to the 8 user LEDs on Zedboard
set_property PACKAGE_PIN T22 [get_ports {debug_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[0]}]

set_property PACKAGE_PIN T21 [get_ports {debug_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[1]}]

set_property PACKAGE_PIN U22 [get_ports {debug_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[2]}]

set_property PACKAGE_PIN U21 [get_ports {debug_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[3]}]

set_property PACKAGE_PIN V22 [get_ports {debug_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[4]}]

set_property PACKAGE_PIN W22 [get_ports {debug_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[5]}]

set_property PACKAGE_PIN U19 [get_ports {debug_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[6]}]

set_property PACKAGE_PIN U14 [get_ports {debug_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {debug_out[7]}]
