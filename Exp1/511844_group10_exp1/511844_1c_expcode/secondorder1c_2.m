%step response of system for pole pair at s=R+Ri,R-Ri, R=44
clc;
clear;
close;
a=5*44;
num=[2*a^2];
den=[1 2*a 2*a^2];
sys=tf(num,den);
step(sys,0:.001:0.1);
title("step response of system for pole pair at s=R+Ri,R-Ri, R=44");
