%% Time Response of First Order System
num=[1];
den=[1 4];
G=tf(num,den)
figure(1);
step(G)
%% Time Response of Second Order System
num1=[1];
den1=[1 3 9];
P=tf(num1,den1)
figure(2);
step(P) 