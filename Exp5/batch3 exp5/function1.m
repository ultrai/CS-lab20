clc;
clear;
close all;
G=tf([1],[1 3 2])
H1=tf(-1)
sys1=feedback(G,H1)
H2=tf(1)
sys2=feedback(G,H2)
H3=tf([1],[1 1])
sys3=feedback(G,H3)
H4=tf([1 1],[1])
sys4=feedback(G,H4)
figure(1)
step(G)
figure(2)
step(sys1)
figure(3)
step(sys2)
figure(4)
step(sys3)
figure(5)
step(sys4)