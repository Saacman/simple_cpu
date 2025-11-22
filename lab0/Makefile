.PHONY: part1
part1:
	make clean
	verilator --build ./part1/fullAdder.v --exe ./part1/testbench.cpp -cc --trace -Wall
	./obj_dir/VfullAdder

.PHONY: part2
part2:
	make clean
	verilator --build ./part2/alu.v ./part1/fullAdder.v ./part2/adder4Bit.v --top-module alu --exe ./part2/testbench.cpp -cc --trace -Wall
	./obj_dir/Valu

.PHONY: clean
clean:
	rm -rf obj_dir
	rm -f waveform.vcd
