restart
add_force rst {1 0ns} {0 1ps} {1 1000ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns

add_force delta_a -radix dec 40
add_force delta_b -radix dec 10

run 100us

