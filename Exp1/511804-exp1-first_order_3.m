%%step response of 1st order unity feedback system
%%placing pole at -20
H4 = tf([0 1],[1,20]);
step(H4);