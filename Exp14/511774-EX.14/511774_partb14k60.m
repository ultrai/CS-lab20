clear all;
clc;
%%leser k so stable
syms s
K=60;
Gnum=1;
Gden= sym2poly(s*(s+1)*(s+2));
G=tf(Gnum,Gden);
H=1;
figure(1)
rlocus(G*H*K);
title('G*H*K')
t=feedback(G*K,H);
figure(2)
step(t)
title('step t')
figure(3)
rlocus(t)
title('k=60 rlocus of t')
