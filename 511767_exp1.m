%% Time response of first order system
num=[1];
den[1 4];
G=tf(num,den);
figure(1);
step(G)
%% Time response of second order system
num=[1];
den=[1,3,9];
G=tf(num,den);
figure(2);
step(G)
