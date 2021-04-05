%  Step response of Transfer function 1/((s+1)(s+2))
num = 1;
den = [1 3 2];
g = tf(num,den);
figure(1)
step(g);

%% Step response of g with positive(1) feedback
p = feedback(g,1,1);
figure(2)
step(p);
%% Step response of g with negative(1) feedback
p1 = feedback(g,1);
figure(3)
step(p1)
%% step response of g with s+1 pole in -ve feedback path
h1 = tf(1,[1 1]);
p2 = feedback(g,h1);
figure(4)
step(p2)
%% step response of g with s+1 zero in -ve feedback path
h2 = tf([1 1],1);
p3 = feedback(g,h2);
figure(5)
step(p3)
