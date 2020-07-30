%% 11.b Block diagram reduction techniques
clc;
clear;
s=tf('s')
G1 = 1/(s+10)
G2 = 1/(s+1)
G3 = (s^2 +1)/(s^2 + 4*s + 4)
G4 = (s+1)/(s+6)
H1 = (s+1)/(s+2)
H2 = 2
H3 = 1
H2 = H2/G4
sys = feedback(series(G3,G4),H1,+1)
sys = feedback(series(G2,sys),H2,-1)
sys = feedback(series(G1,sys),H3,-1)