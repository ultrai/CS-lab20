%Comparative Study Of Bode,Nyquist and Root Locus PLots with Respect to
%Stability
%Root Locus
clc;
clear;
s=tf('s');
p=[1];
q=[1 6 11 6];
k=36;
sys=k*tf(p,q)
%Root Locus of tf =36/(s^3+6*s^2+11*s+6
figure(1)
rlocus(sys)
grid on;
title('Root Locus of tf =36/(s^3+6*s^2+11*s+6)');

%Nyquist Plot for tf=1/(s(s+1)(s+2))
sys1=tf([1],[1 3 2 0])
figure(2)
nyquist(sys1);
grid on;
title('Nyquist Plot of tf=1/(s(s+1)(s+2))')

%Bode Plots
%Bode Plot for tf =36/(s^3+6*s^2+11*s+6)
figure(3)
bode(sys);
margin(sys)
[Gm,Pm]=margin(sys)

%Bode Plot for tf =10/(s(1+0.4s)(1+0.1s))
s=tf('s')
sys2=10/(s*(1+0.4*s)*(1+0.1*s));
figure(4)
bode(sys2);
margin(sys2)
[Gm,Pm]=margin(sys2)



