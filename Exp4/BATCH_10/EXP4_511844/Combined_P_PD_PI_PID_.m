clear;clc;
num=1;kp=300;
control=kp;
den=[1 10 20];
plant=tf(num,den);
sys_cl_P=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl_P,t);
S = stepinfo(sys_cl_P)
grid;

hold on;

num=1;
kp=30;
ki=70;
den=[1 10 20];
control=tf([kp ki],[1 0]);
plant=tf(num,den);
sys_cl_PI=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl_PI,t);
S = stepinfo(sys_cl_PI)
grid;

hold on;

num=1;
kp=300;
kd=10;
den=[1 10 20];
control=tf([kd kp],1);
plant=tf(num,den);
sys_cl_PD=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl_PD,t);
S = stepinfo(sys_cl_PD)
grid;

hold on;

num=1;
kp=350;
ki=300;
kd=50;
den=[1 10 20];
control=tf([kd kp ki],[1 0]);
plant=tf(num,den);
sys_cl_PID=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl_PID,t);
S = stepinfo(sys_cl_PID)
grid;