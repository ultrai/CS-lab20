clear all;
clc;
sys s
j=1;
Pnum=1;
Qden= sym2poly(s*(s+1)*(s+2));
G=tf(Pnum,Qden);
l=1;
figure(1)
rlocus(G*j*l);
title('G*j*l')
B=feedback(G*j,l);
figure(2)
step(T)
title('step T')
figure(3)
rlocus(B)
title('j=1 rlocus of T')