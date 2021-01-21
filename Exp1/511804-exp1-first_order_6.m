%%step response of 1st order unity feedback system
%%placing zeroes for transfer function:1/(s+5)
%%placing zero at -20
H7=tf([1 20],[1 5]);
step(H7);