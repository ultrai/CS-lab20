clc;
clear;
Ra=1;
La=0.5;
Ca=0.5;
G=tf([0 1],[1 Ra/La 1/(La*Ca)])
figure(1)
step(G)
grid

%%ro=1,l=1,co=0.5 - critically damped it is
G1= tf([1],[1 2 1])
figure(2)
step(G1)
grid