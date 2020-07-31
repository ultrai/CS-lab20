clc;
clear;
R=1;
L=0.5;
C=0.5;
G=tf([0 1],[1 R/L 1/(L*C)])
figure(1)
step(G)
grid

%%r=1,l=1,c=0.5 - critically damp
G1= tf([1],[1 2 1])
figure(2)
step(G1)
grid
