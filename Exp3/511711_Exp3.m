%% 3.Frequency response of Second order systems
clc;
clear;
s = tf('s');
G = 25/(s^2 + 5*s + 25);
figure(1);
step(G)
figure(2)
bode(G)