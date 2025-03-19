restart
add_force rst {1 0ns} {0 1ps} {1 1000ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns

add_force pls {0 0ns} {1 2us} -repeat_every 4us

add_force f_set -radix dec 1000
run 1500us

