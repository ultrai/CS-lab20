%%step response of 1st order unity feedback system
%%placing pole at -4
H3 = tf([0 1],[1 4]);
step(H3);