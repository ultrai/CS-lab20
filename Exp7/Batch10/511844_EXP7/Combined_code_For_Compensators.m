%% 
clc;clear;
%For Uncompensated System
%For Transfer Function G(s)=1/(s(s+1))
sys=zpk([],[0 -1],1)
%Step Response Of Transfer Function G(s)=1/(s(s+1))
figure(1)
step(sys)
grid on;
title('Step Response For Uncompensated System with Transfer Function G(s)=1/(s(s+1))')
stepinfo(sys)
%Frequency Response Of Transfer Function G(s)=1/(s(s+1)) Using Bode Plot
figure(2)
bode(sys)
grid on;
margin(sys)
[Gm Pm]=margin(sys)

%For Lead Compensated System Specifications -> Kv=10(1/sec), phase=35 degrees
%For Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s))
sys1=zpk([-1/0.385],[0 -1 -1/0.162],10*0.385/0.162)
%Step Response Of Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s))
figure(3)
step(sys1)
grid on;
title('Step Response For Lead compensated System with Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s))')
stepinfo(sys1)
%Frequency Response Of Transfer Function G(s)=(10(1+0.385s))/(s(s+1)(1+0.162s)) Using Bode Plot
figure(4)
bode(sys1)
grid on;
margin(sys1)
[Gm Pm]=margin(sys1)
%% 

%For Uncompensated System
%For Transfer Function G(s)=1/(s(s+1)(s+5))
sys2=zpk([],[0 -1 -5],1)
figure(5)
step(sys2)
grid on;
title('Step Response For Uncompensated System with Transfer Function G(s)=1/(s(s+1)(s+5))')
stepinfo(sys2)
%Frequency Response Of Transfer Function G(s)=1/(s(s+1)(s+5)) Using Bode Plot
figure(6)
bode(sys2)
grid on;
margin(sys2)

%For Lag Compensated System, the Specifications -> Damping ratio=0.3,ts=12s,Kv>=8(1/sec)
%Transfer Function G(s)=(8(1+5s))/(s(s+1)(1+0.2s)(1+40s)))
sys3=zpk([-1/5],[0 -1 -5 -1/40],1/5)
figure(7)
step(sys3)
grid on;
title('Step Response For Lag compensated System with Transfer Function G(s)=(8(1+5s))/(s(s+1)(1+0.2s)(1+40s)))')
stepinfo(sys3)
%Frequency Response Of Transfer Function G(s)=(8(1+5s))/(s(s+1)(1+0.2s)(1+40s))) Using Bode Plot
figure(8)
bode(sys3)
grid on;
margin(sys3)
[Gm Pm]=margin(sys3)
%% 
%For Uncompensated System
%For Transfer Function G(s)=1/(s(1+0.5s)(1+0.1s))
sys4=zpk([],[0 -2 -10],20)
figure(9)
step(sys4)
grid on;
title('Step Response For Uncompensated transfer function G(s)=1/(s(1+0.5s)(1+0.1s))')
stepinfo(sys4)
%Frequency Response Of Transfer Function G(s)=1/(s(1+0.5s)(1+0.1s)) Using Bode Plot
figure(10)
bode(sys4)
grid on;
margin(sys4)
[Gm Pm]=margin(sys4)


%For Lag-Lead Compsated System With Specifications -> Damping ratio=0.3,ts=12s,Kv>=25(1/sec)
%Transfer Function G(s)=(25(1+2s))/(s(1+0.5s)(1+0.1s)(1+16s)))
sys5=zpk([-1/2 -1/0.746 ],[0 -2 -10 -1/16 -1/0.093],(50*0.746/(0.5*0.1*16*0.093)))
figure(11)
step(sys5)
grid on;
title('Step Response For Uncompensated transfer function G(s)=(25(1+2s))/(s(1+0.5s)(1+0.1s)(1+16s)))')
stepinfo(sys5)
%Frequency Response Of Transfer Function G(s)=(25(1+2s))/(s(1+0.5s)(1+0.1s)(1+16s))) Using Bode Plot
figure(12)
bode(sys5)
grid on;
margin(sys5)
[Gm Pm]=margin(sys5)

