restart
force rst 0 0, 1 1000ns
force clk 0 0, 1 50ns -r 100ns

force delta_a 10#10
force delta_b 10#15

run 100us

