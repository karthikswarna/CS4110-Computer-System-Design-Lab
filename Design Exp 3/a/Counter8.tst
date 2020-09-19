load Counter8.hdl,
output-file Counter8.out,
compare-to Counter8.cmp,
output-list time%S1.4.1 in%B1.8.1 load%B2.1.2 ud%B2.1.2 out%B1.8.1;

set in 0,
set load 0,
set ud 0,
tick,
output;

tock,
output;

tick,
output;

tock,
output;

set in 96,
set ud 1,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,
output;

tock,
output;

tick,
output;

tock,
output;

set in 123,
set load 1,
set ud 0,
tick,
output;

tock,
output;

tick,
output;

tock,
output;

set ud 1,
tick,
output;

tock,
output;

tick,
output;

tock,
output;

set load 0,
set ud 0,
tick,
output;

tock,
output;

set ud 1,
tick,
output;

tock,
output;

set in 0,
set load 1,
tick,
output;

tock,
output;

set load 0,
tick,
output;

tock,
output;

set in 22,
tick,
output;

tock,
output;

set in 0,
tick,
output;

tock,
output;