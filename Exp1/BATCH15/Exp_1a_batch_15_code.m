%%step response of 1st order system
%%G(s)= 1/(s+5)
H1 = tf([0 1],[1 5]);
figure(1);
step(H1);
title('Step response of 1st order system 1/(s+5)')

%%step response of 1st order system
%%placing zeroes and poles
%%placing pole at -1/4
H2 = tf([0 1],[1,0.25]);
figure(2);
step(H2);
title('Step response of 1st order system with pole at -1/4')

%%step response of 1st order system
%%placing pole at -4
H3 = tf([0 1],[1 4]);
figure(3);
step(H3);
title('Step response of 1st order system with pole at -4')

%%step response of 1st order system
%%placing pole at -20
H4 = tf([0 1],[1,20]);
figure(4);
step(H4);
title('Step response of 1st order system with pole at -20')

%%placing zeroes for transfer function:1/(s+5)
%%placing zero at -1/4
H5= tf([1 0.25],[1 5]);
figure(5);
step(H5);
title('Step response of 1st order system 1/(s+5) with zero at -1/4')

%%placing zeroes for transfer function:1/(s+5)
%%placing zero at -4
H6 = tf([1 4],[1 5]);
figure(6);
step(H6);
title('Step response of 1st order system 1/(s+5) with zero at -4')

%%placing zero at -20
H7=tf([1 20],[1 5]);
figure(7);
step(H7);
title('Step response of 1st order system 1/(s+5) with zero at -20')

%%placing zero at 0.25
H8 = tf([1 -0.25],[1 5]);
figure(8);
step(H7);
title('Step response of 1st order system 1/(s+5) with zero at 1/4')



