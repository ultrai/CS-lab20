%% Analysis of P,PI,PD,PID Controllers
clc;clear
%% Transfer function
s = tf('s');
G = 1/(s^2 + 10*s + 20);
step(G)
%% Proportional control
Kp = 300;
C = pid(Kp)
plant = C*G;
T = feedback(plant,1)
t = 0:0.01:2;
figure(1)
step(T,t)
%% Proportional-derivative control
Kp = 300;
Kd = 10;
C = pid(Kp,0,Kd)
plant = C*G;
T = feedback(plant,1)
t = 0:0.01:2;
figure(2)
step(T,t)
%% Proportional-integral control
Kp = 30;
Ki = 70;
C = pid(Kp,Ki)
plant = C*G;
T = feedback(plant,1)
t = 0:0.01:2;
figure(3)
step(T,t)
%% Proportional-integral-derivative control
Kp = 350;
Ki = 300;
Kd = 50;
C = pid(Kp,Ki,Kd)
plant = C*G;
T = feedback(plant,1)
t = 0:0.01:2;
figure(4)
step(T,t)