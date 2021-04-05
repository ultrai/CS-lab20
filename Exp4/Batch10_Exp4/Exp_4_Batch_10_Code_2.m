%p controller
clear;clc;
num=1;kp=300;
control=kp;
den=[1 10 20];
plant=tf(num,den);
sys_cl_P=feedback(plant*control,1)
t=0:0.01:2;
figure(1)
step(sys_cl_P,t);
title('step response of the system using P controller')
S = stepinfo(sys_cl_P)
grid;

%PI Controller
num=1;
kp=30;
ki=70;
den=[1 10 20];
control=tf([kp ki],[1 0]);
plant=tf(num,den);
sys_cl_PI=feedback(plant*control,1)
t=0:0.01:2;
figure(2)
step(sys_cl_PI,t);
title('step response of the system using PI controller')
S = stepinfo(sys_cl_PI)
grid;

%PD Controller
num=1;
kp=300;
kd=10;
den=[1 10 20];
control=tf([kd kp],1);
plant=tf(num,den);
sys_cl_PD=feedback(plant*control,1)
t=0:0.01:2;
figure(3)
step(sys_cl_PD,t);
title('step response of the system using PD controller')
S = stepinfo(sys_cl_PD)
grid;

%PID Controller
num=1;
kp=350;
ki=300;
kd=50;
den=[1 10 20];
control=tf([kd kp ki],[1 0]);
plant=tf(num,den);
sys_cl_PID=feedback(plant*control,1)
t=0:0.01:2;
figure(4)
step(sys_cl_PID,t);
title('step response of the system using PID controller')
S = stepinfo(sys_cl_PID)
grid;

figure(5)
step(sys_cl_P,t);
hold on;
step(sys_cl_PI,t);
hold on;
step(sys_cl_PD,t);
hold on;
step(sys_cl_PID,t);
hold on;
title('Combined StepResponses of the system using P,PI,PD and PID controller')
