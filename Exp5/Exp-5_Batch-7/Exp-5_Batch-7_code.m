%% Step response of Transfer function 1/((s+1)(s+2))
clear;
clc;
a = 1;
b = [1 3 2];
c = tf(a,b);
figure(1)
step(c);
title(' step response of transfer function 1/((s+1)(s+2))')
%% Step response of c with unity positive feedback
d = feedback(c,1,1);
figure(2)
step(d);
title(' step response of TF 1/((s+1)(s+2))with +ve FB ')
%% Step response of c with unity negative feedback
d1 = feedback(c,1);
figure(3)
step(d1)
title(' step response of TF 1/((s+1)(s+2))with -ve FB ')
%% step response of c with s+1 pole in feedback path
h1 = tf(1,[1 1]);
d2 = feedback(c,h1);
figure(4)
step(d2)
title('step response of TF 1/((s+1)(s+2))with (s+1) pole in FB path')
%% step response of c with s+1 zero in feedback path
h2 = tf([1 1],1);
d3 = feedback(c,h2);
figure(5)
step(d3)
title('step response of TF 1/((s+1)(s+2))with (s+1) zero in FB path')
%% Step response of Transfer function 1/((s-1)(s+2))
a1 = 1;
b1 = [1 1 -2];
c1 = tf(a1,b1);
figure(6)
step(c1);
title(' step response of transfer function 1/((s-1)(s+2))')
%% Step response of c1 with unity positive feedback
k = feedback(c1,1,1);
figure(7)
step(k);
title(' step response of TF 1/((s-1)(s+2))with +ve FB ')
%% Step response of c1 with unity negative feedback
k1 = feedback(c1,1);
figure(8)
step(k1);
title(' step response of TF 1/((s-1)(s+2))with -ve FB ')
%% step response of c1 with s+1 pole in feedback path
h1 = tf(1,[1 1]);
k2 = feedback(c1,h1);
figure(9)
step(k2)
title('step response of TF 1/((s-1)(s+2)) with (s+1) pole in FB path')
%% step response of c1 with s+1 zero in feedback path
h2 = tf([1 1],1);
k3 = feedback(c1,h2);
figure(10)
step(k3)
title('step response of TF 1/((s-1)(s+2)) with (s+1) zero in FB path')
%% Step response of Transfer function 1/(10s)
a2 = 1;
b2 = [10 0];
c2 = tf(a2,b2);
figure(11)
step(c2);
title(' step response of transfer function 1/(10s)')
%% Step response of c2 with unity positive feedback
v = feedback(c2,1,1);
figure(12)
step(v);
title(' step response of TF 1/(10s) with +ve FB ')
%% Step response of c2 with unity negative feedback
v1 = feedback(c2,1);
figure(13)
step(v1);
title(' step response of TF 1/(10s) with -ve FB ')
%% step response of c2 with s+1 pole in feedback path
h1 = tf(1,[1 1]);
v2 = feedback(c2,h1);
figure(14)
step(v2)
title('step response of TF 1/(10s)with (s+1) pole in FB path')
%% step response of c with s+1 zero in feedback path
h2 = tf([1 1],1);
v3 = feedback(c2,h2);
figure(15)
step(v3)
title('step response of TF 1/(10s)with (s+1) zero in FB path')