%%step response of 1st order unity feedback system
%%placing zeroes for transfer function:1/(s+5)
%%placing zero at -4
H6 = tf([1 4],[1 5]);
step(H6);
