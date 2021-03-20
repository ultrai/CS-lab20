%Time Response of First Order System
num=[4];
den=[1 4];
G=tf(num,den)
figure(1);
step(G)