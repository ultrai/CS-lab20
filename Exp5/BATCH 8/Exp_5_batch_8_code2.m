%%  Step response of Transfer function 1/((s-1)(s+2))
num1 = 1;
den1 = [1 1 -2];
g1 = tf(num1,den1);
figure(1)
step(g1);

%% Step response of g1 with positive(1) feedback
a = feedback(g1,1,1);
figure(2)
step(a);
%% Step response of g1 with negative(1) feedback
a1 = feedback(g1,1);
figure(3)
step(a1);

%% step response of g1 with s+1 pole in -ve feedback path
h1 = tf(1,[1 1]);
a2 = feedback(g1,h1);
figure(4)
step(a2)
%% step response of g1 with s+1 zero in -ve feedback path
h2 = tf([1 1],1);
a3 = feedback(g1,h2);
figure(5)
step(a3)
