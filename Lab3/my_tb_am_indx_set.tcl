restart
add_force rst {1 0ns} {0 1ps} {1 1000ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns
add_force pls {0 0ns} {1 1us} -repeat_every 2us

add_force f_source -radix dec 100

add_force indx_set -radix dec 100
run 30ms

add_force indx_set -radix dec 50
run 30ms

add_force indx_set -radix dec 25
run 30ms

add_force indx_set -radix dec 0
run 30ms
