%%step response of 1st order unity feedback system
%%placing zeroes and poles
%%placing pole at -1/4
H2 = tf([0 1],[1,0.25]);
step(H2);