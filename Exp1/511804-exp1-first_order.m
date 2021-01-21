%%step response of 1st order unity feedback system
%%G(s)= 1/(s+5)
H1 = tf([0 1],[1 5]);
step(H1);

