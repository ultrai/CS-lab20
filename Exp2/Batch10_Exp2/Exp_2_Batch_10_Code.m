clc; clear;
s=tf('s')
% For Under Damped System
G1=100/(s^2+10*s+100)
% For Resonant peak Magnitude And Resonant Frequency 
[Mr,Wr]=getPeakGain(G1)
% For Bandwidth
Wb=bandwidth(G1)
% Frequency Response Using Bode PLot
figure(1)
bode(G1)
% For Phase Margin And Gain Margin
margin(G1)

s=tf('s')
% For Over Damped System
G2=12/(s^2+7*s+12)
% For Resonant peak Magnitude And Resonant Frequency 
[Mr,Wr]=getPeakGain(G2)
% For Bandwidth
Wb=bandwidth(G2)
% Frequency Response Using Bode PLot
figure(2)
bode(G2)
% For Phase Margin And Gain Margin
margin(G2)

s=tf('s')
% For Critically Damped System
G3=4/(s^2+4*s+4)
% For Resonant peak Magnitude And Resonant Frequency 
[Mr,Wr]=getPeakGain(G3)
% For Bandwidth
Wb=bandwidth(G3)
% Frequency Response Using Bode PLot
figure(3)
bode(G3)
% For Phase Margin And Gain Margin
margin(G3)

s=tf('s')
% For UnDamped System
G4=25/(s^2+25)
% For Resonant peak Magnitude And Resonant Frequency 
[Mr,Wr]=getPeakGain(G4)
% For Bandwidth
Wb=bandwidth(G4)
% Frequency Response Using Bode PLot
figure(4)
bode(G4)
% For Phase Margin And Gain Margin
margin(G4)

%Combined Bode Plots 
figure(5)
bode(G1,G2,G3,G4)

