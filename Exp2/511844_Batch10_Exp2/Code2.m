clc; clear;
s=tf('s')
G=12/(s^2+7*s+12)
[Mr,Wr]=getPeakGain(G)
Wb=bandwidth(G)
bode(G)
margin(G)
