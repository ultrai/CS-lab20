%  Step response of Transfer function 1/((s+1)(s+2))
n = 1;
d = [1 3 2];
g = tf(n,d);
figure(1)
step(g);
title('Step response of Transfer function 1/((s+1)(s+2))')
%% Step response of g with positive(1) feedback
t = feedback(g,1,1);
figure(2)
step(t);
title('Step response of g with positive(1) feedback')
%% Step response of g with negative(1) feedback
t1 = feedback(g,1);
figure(3)
step(t1)
title('Step response of g with negative(1) feedback')
%% step response of g with s+1 pole in -ve feedback path
h1 = tf(1,[1 1]);
t2 = feedback(g,h1);
figure(4)
step(t2)
title('step response of g with s+1 pole in -ve feedback path')
%% step response of g with s+1 zero in -ve feedback path
h2 = tf([1 1],1);
t3 = feedback(g,h2);
figure(5)
step(t3)
title('step response of g with s+1 zero in -ve feedback path')
%%  Step response of Transfer function 1/((s-1)(s+2))
num1 = 1;
den1 = [1 1 -2];
g1 = tf(num1,den1);
figure(6)
step(g1);
title(' Step response of Transfer function 1/((s-1)(s+2))')

%% Step response of g1 with positive(1) feedback
m = feedback(g1,1,1);
figure(7)
step(m);
title('Step response of g1 with positive(1) feedback')
%% Step response of g1 with negative(1) feedback
m1 = feedback(g1,1);
figure(8)
step(m1);
title('Step response of g1 with negative(1) feedback')
%% step response of g1 with s+1 pole in -ve feedback path
h1 = tf(1,[1 1]);
m2 = feedback(g1,h1);
figure(9)
step(m2)
title('step response of g1 with s+1 pole in -ve feedback path')
%% step response of g1 with s+1 zero in -ve feedback path
h2 = tf([1 1],1);
m3 = feedback(g1,h2);
figure(10)
step(m3)
title('step response of g1 with s+1 zero in -ve feedback path')
%%  Step response of Transfer function 1/(10s)
num = 1;
den = [10 0];
g2 = tf(num,den);
figure(11)
step(g2);
title('Step response of Transfer function 1/(10s)')
%% Step response of g2 with positive(1) feedback
n = feedback(g2,1,1);
figure(12)
step(n);
title('Step response of g2 with positive(1) feedback')
%% Step response of g2 with negative(1) feedback
n1 = feedback(g2,1);
figure(13)
step(n1);
title('Step response of g2 with negative(1) feedback')
%% step response of g2 with s+1 pole in -ve feedback path
h1 = tf(1,[1 1]);
n2 = feedback(g2,h1);
figure(14)
step(n2)
title('step response of g2 with s+1 pole in -ve feedback path')
%% step response of g with s+1 zero in -ve feedback path
h2 = tf([1 1],1);
n3 = feedback(g2,h2);
figure(15)
step(n3)
title('step response of g with s+1 zero in -ve feedback path')
