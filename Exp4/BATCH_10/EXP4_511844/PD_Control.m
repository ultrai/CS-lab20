clear;clc;
num=1;
kp=300;
kd=10;
den=[1 10 20];
control=tf([kd kp],1);
plant=tf(num,den);
sys_cl=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl,t);
S = stepinfo(sys_cl)
grid;