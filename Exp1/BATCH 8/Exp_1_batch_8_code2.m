%Time Response of Second Order System
num=[4];
den=[1 1 4];
G=tf(num,den)
figure(2);
step(G)