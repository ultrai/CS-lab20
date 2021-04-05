clc;
clear;
close all;
s=tf('s');
G=1/(s^2+10*s+20);
figure(1);
step(G);


%p-controller%
kp=300;
C=pid(kp,0,0);
plant=C*G;
T=feedback(plant,1);
t=1:0.01:2;
figure(2)
step(T,t)

%i-controller%
ki=70;
C=pid(0,ki,0);
plant=C*G;
T=feedback(plant,1);
t=1:0.01:2;
figure(3)
step(T,t)

%d-controller%
kd=10;
C=pid(0,0,kd);
plant=C*G;
T=feedback(plant,1);
t=1:0.01:2;
figure(4)
step(T,t)

%pi-controller%
kp=300;
ki=70;
C=pid(kp,ki,0);
plant=C*G;
T=feedback(plant,1);
t=1:0.01:2;
figure(5)
step(T,t)

%pd-controller%
kp=300;
kd=10;
C=pid(kp,0,kd);
plant=C*G;
T=feedback(plant,1);
t=1:0.01:2;
figure(6)
step(T,t)

%pid controller%
kp=350
ki=300
kd=50
C1=pid(kp,ki,kd);
plant=C1*G;
T1=feedback(plant,1);
t=1:0.01:2;
figure(7)
step(T1,t)