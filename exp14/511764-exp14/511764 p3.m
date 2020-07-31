clear all;
clc;
syms s
j=60;
Pnum=1;
Qden= sym2poly(s*(s+1)*(s+2));
G=tf(Pnum,Qden);
l=1;
figure(1)
rlocus(G*j*l);
title('G*l*j')
T=feedback(G*j,l);
figure(2)
step(T)
title('step T')
figure(3)
rlocus(T)
title('k=60 rlocus of T')