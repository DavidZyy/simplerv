
# TEST = single_cycle_cpu_tb

TEST = single_cycle_cpu_board_tb

TB_DIR = testbench

BUILD_DIR = build

VCD_DIR = vcd

SRC = src

run:
	mkdir -p $(BUILD_DIR)
	iverilog $(TB_DIR)/$(TEST).v -y src/cpu -y src -o $(BUILD_DIR)/$(TEST) 
	vvp -n $(BUILD_DIR)/$(TEST) -vcd

wave:
	gtkwave $(TEST).vcd

clean:
	rm -rf $(TEST).vcd $(BUILD_DIR)
