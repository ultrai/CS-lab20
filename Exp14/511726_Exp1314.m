%% 13.a To examine the relationships between open-loop frequency response and stability and closed loop transient response
clc;
clear;
s = tf('s')
Open = (s+1)/(s+3)
Closed = feedback(Open,1)
figure(1)
margin(Open),grid
hold on
margin(Closed),grid
%% 13.b To study the effect poles and zeroes on the closed loop transient response
clc;
clear;
s = tf('s')
G = (s+3)/((s+1)*(s+2))
F = feedback(G,1)
Fp = F/(s+4) %adding pole
Fz = F*(s+4) %adding zero
figure(2)
step(Fp),grid
hold on
step(Fz),grid
%% 14.a Effect of adding poles and zeroes to open loop on root locus contour
clc;
clear;
s = tf('s') 
R = (s+3)/((s+1)*(s+2))
Rp = R/(s+4) %adding pole
Rz = R*(s+4) %adding zero
figure(3)
rlocus(Rp),grid
hold on
rlocus(Rz),grid
%% 14.b To estimate the effect of open loop gain on the transient response of closed loop system by using Root locus
clc;
clear;
s = tf('s')
C = (s+3)/((s+1)*(s+2))
Cc = feedback(C,1)
CcK = 10*Cc
figure(4)
step(Cc),grid
hold on
step(CcK),grid
figure(5)
rlocus(Cc),grid
hold on
rlocus(CcK),grid
%% 14.c Comparative study of Bode, Nyquist and Root locus with respect to Stability
clc;
clear;
s = tf('s')
T = (s+3)/((s+1)*(s+2))
Tc = feedback(T,1)
figure(6)
bode(Tc),grid
figure(7)
nyquist(Tc),grid
figure(8)
rlocus(Tc)