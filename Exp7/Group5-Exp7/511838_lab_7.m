%% 
clc;clear;
%For Uncompensated System
%For Transfer Function G(s)=1/(s(s+1))
G=zpk([],[0 -1],1)
sys=feedback(G,1)
%StepResponse For Uncompensated System
figure(1)
step(sys)
grid on;
title('Step Response For Uncompensated System with Transfer Function G(s)=1/(s(s+1))')
stepinfo(sys)
%Frequency Response Of Transfer Function G(s)=1/(s(s+1)) Using Bode Plot
figure(2)
bode(G)
grid on;
margin(G)
[Gm Pm]=margin(G)

%For Lead Compensated System Specifications -> Kv=10(1/sec), phase=35 degrees
%For Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s))
G1=zpk([-1/0.385],[0 -1 -1/0.162],10*0.385/0.162)
sys1=feedback(G1,1)
%Step Response For Uncompensated System
figure(3)
step(sys1)
grid on;
title('Step Response For Lead compensated System with Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s))')
stepinfo(sys1)
%Frequency Response Of Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s)) Using Bode Plot
figure(4)
bode(G1)
grid on;
margin(G1)
[Gm Pm]=margin(G1)
%% 

%For Uncompensated System
%For Transfer Function G(s)=1/(s(s+1)(s+5))
G2=zpk([],[0 -1 -5],1)
sys2=feedback(G2,1)
%Step Response Of Transfer Function G(s)=1/(s(s+1))
figure(5)
step(sys2)
grid on;
title('Step Response For Uncompensated System with Transfer Function G(s)=1/(s(s+1)(s+5))')
stepinfo(sys2)
%Frequency Response Of Transfer Function G(s)=1/(s(s+1)(s+5)) Using Bode Plot
figure(6)
bode(G2)
grid on;
margin(G2)
[Gm Pm]=margin(G2)

%For Lag Compensated System, the Specifications -> Damping ratio=0.3,ts=12s,Kv>=8(1/sec)
%Transfer Function G(s)=(8(1+5s))/(s(s+1)(1+0.2s)(1+40s)))
G3=zpk([-1/5],[0 -1 -5 -1/40],1/5)
sys3=feedback(G3,1)
%Step Response Of Transfer Function G(s)=1/(s(s+1))
figure(7)
step(sys3)
grid on;
title('Step Response For Lag compensated System with Transfer Function G(s)=(8(1+5s))/(s(s+1)(1+0.2s)(1+40s)))')
stepinfo(sys3)
%Frequency Response Of Transfer Function G(s)=(8(1+5s))/(s(s+1)(1+0.2s)(1+40s))) Using Bode Plot
figure(8)
bode(G3)
grid on;
margin(G3)
[Gm Pm]=margin(G3)
%% 
%For Uncompensated System
%For Transfer Function G(s)=1/(s(1+0.5s)(1+0.1s))
G4=zpk([],[0 -2 -10],20)
sys4=feedback(G4,1)
%Step Response Of Transfer Function G(s)=1/(s(s+1))
figure(9)
step(sys4)
grid on;
title('Step Response For Uncompensated transfer function G(s)=1/(s(1+0.5s)(1+0.1s))')
stepinfo(sys4)
%Frequency Response Of Transfer Function G(s)=1/(s(1+0.5s)(1+0.1s)) Using Bode Plot
figure(10)
bode(G4)
grid on;
margin(G4)
[Gm Pm]=margin(G4)


%For Lag-Lead Compsated System With Specifications -> Damping ratio=0.3,ts=12s,Kv>=25(1/sec)
%Transfer Function G(s)=(25(1+2s))/(s(1+0.5s)(1+0.1s)(1+16s)))
G5=zpk([-1/2 -1/0.746 ],[0 -2 -10 -1/16 -1/0.093],(50*0.746/(0.5*0.1*16*0.093)))
sys5=feedback(G5,1)
%Step Response Of Transfer Function G(s)=1/(s(s+1))
figure(11)
step(sys5)
grid on;
title('Step Response For Lag-Leadcompensated transfer function G(s)=(25(1+2s))/(s(1+0.5s)(1+0.1s)(1+16s)))')
stepinfo(sys5)
%Frequency Response Of Transfer Function G(s)=(25(1+2s))/(s(1+0.5s)(1+0.1s)(1+16s))) Using Bode Plot
figure(12)
bode(G5)
grid on;
margin(G5)
[Gm Pm]=margin(G5)
