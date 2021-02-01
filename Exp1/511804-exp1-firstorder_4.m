%%step response of 1st order unity feedback system
%%placing zeroes for transfer function:1/(s+5)
%%placing zero at -1/4
H5= tf([1 0.25],[1 5]);
step(H5);
