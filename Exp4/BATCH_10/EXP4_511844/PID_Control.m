clear;clc;
num=1;
kp=350;
ki=300;
kd=50;
den=[1 10 20];
control=tf([kd kp ki],[1 0]);
plant=tf(num,den);
sys_cl=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl,t);
S = stepinfo(sys_cl)
grid;