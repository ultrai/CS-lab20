clc; clear;
s=tf('s')
G=4/(s^2+4*s+4)
[Mr,Wr]=getPeakGain(G)
Wb=bandwidth(G)
bode(G)
margin(G)
