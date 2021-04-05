%%  Step response of Transfer function 1/(10s)
num = 1;
den = [10 0];
g2 = tf(num,den);
figure(1)
step(g2);

%% Step response of g2 with positive(1) feedback
b = feedback(g2,1,1);
figure(2)
step(b);
%% Step response of g2 with negative(1) feedback
b1 = feedback(g2,1);
figure(3)
step(b1);

%% step response of g2 with s+1 pole in -ve feedback path
h1 = tf(1,[1 1]);
b2 = feedback(g2,h1);
figure(4)
step(b2)
%% step response of g with s+1 zero in -ve feedback path
h2 = tf([1 1],1);
b3 = feedback(g2,h2);
figure(5)
step(b3)