remove_design -all
set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog { ../rtl/top_block.v} 

elaborate top_block

link 

check_design

current_design  top_block

compile_ultra-no_autoungroup

write_file -f verilog -hier -output top_block_netlist.v


 

