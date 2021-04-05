clc;
clear;
close all;

s=tf('s');
G_P = 25/(s*(0.1*s+1)*(1+0.5*s))
figure(1)
step(feedback(G_P,1))
stepinfo(feedback(G_P,1))
figure(2)
bode(G_P)
margin(G_P)
[m_r,w_r] = getPeakGain(feedback(G_P,1))

G_C = (1+2*s)/(1 + 16*s)
G_T = G_P*G_C
figure(3)
step(feedback(G_T,1))
stepinfo(feedback(G_T,1))
figure(4)
bode(G_T)
margin(G_T)
[m_r_cont,w_r_cont] = getPeakGain(feedback(G_T,1))