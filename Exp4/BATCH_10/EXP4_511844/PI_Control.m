clear;clc;
num=1;
kp=30;
ki=70;
den=[1 10 20];
control=tf([kp ki],[1 0]);
plant=tf(num,den);
sys_cl=feedback(plant*control,1)
t=0:0.01:2;
step(sys_cl,t);
S = stepinfo(sys_cl)
grid;