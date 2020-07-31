clear all;
clc;
%%leser k so stable
syms s
K=1;
Gnum=1;
Gden= sym2poly(s*(s+1)*(s+2));
G=tf(Gnum,Gden);
H=1;
figure(1)
rlocus(G*H*K);
title('G*H*K')
T=feedback(G*K,H);
figure(2)
step(T)
title('step T')
figure(3)
rlocus(T)
title('k=1 rlocus of T')