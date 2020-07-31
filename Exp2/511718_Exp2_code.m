%Time response of a first order and second order system
num=2;
den=[1 1];
G1=tf(num,den);
figure(1)
step(G1);
%overdamped 
num=[2 2];
den=[1 10 20];
G2=tf(num,den);
figure(2)
step(G2); hold on
%underdamped
num=2;
den=[1 5 25];
G3=tf(num,den);
step(G3);hold on
%critically damped
num=2;
den=[1 10 25];
G4=tf(num,den);
step(G4)