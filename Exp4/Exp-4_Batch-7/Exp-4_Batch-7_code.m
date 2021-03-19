%% Effects of P,PI,PD,PID Controllers
clc;
clear all;
a = 1;
b = [1 10 20];
sys = tf(a,b);
t = feedback(sys,1)
figure(1)
step(t,4);
kp = 300;
kd = 10;
ki = 70;
%% Introduction of P Controller
d = pid(kp);
sys1 = sys*d;
t1 = feedback(sys1,1)
figure(2)
step(t1,4);
title(' P Controller')
%% Introduction of PD Controller
d = pid(kp,0,kd);
sys2 = sys*d;
t2 = feedback(sys2,1)
figure(3)
step(t2,4);
title(' PD Controller')
%% Introduction of PI Controller
d = pid(kp,ki,0);
sys3 = sys*d;
t3 = feedback(sys3,1)
figure(4)
step(t3,4);
title(' PI Controller')
%% Introduction of PID Controller
d = pid(kp,ki,kd);
sys4 = sys*d;
t4 = feedback(sys4,1)
figure(5)
step(t4,4);
title(' P Controller')
%% Comparision Graph
figure(6)
step(t,4)
hold on;
step(t1,4)
hold on;
step(t2,4)
hold on;
step(t3,4)
hold on;
step(t4,4)
hold on;