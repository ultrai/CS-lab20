clc; clear;
s=tf('s')
G1=100/(s^2+10*s+100)
[Mr,Wr]=getPeakGain(G1)
Wb=bandwidth(G1)


s=tf('s')
G2=12/(s^2+7*s+12)
[Mr,Wr]=getPeakGain(G2)
Wb=bandwidth(G2)


s=tf('s')
G3=4/(s^2+4*s+4)
[Mr,Wr]=getPeakGain(G3)
Wb=bandwidth(G3)


s=tf('s')
G4=25/(s^2+25)
[Mr,Wr]=getPeakGain(G4)
Wb=bandwidth(G4)
bode(G1,G2,G3,G4)

