clc; clear;
s=tf('s')
G=100/(s^2+10*s+100)
[Mr,Wr]=getPeakGain(G)
Wb=bandwidth(G)
bode(G)
margin(G)
