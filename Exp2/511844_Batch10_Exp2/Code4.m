clc; clear;
s=tf('s')
G=25/(s^2+25)
[Mr,Wr]=getPeakGain(G)
Wb=bandwidth(G)
bode(G)
margin(G)
