%step response of system for pole pair at s=1/R+1/Ri,1/R-1/Ri, R=44
clc;
clear;
close;
a=44;
num=[2*a^2];
den=[1 2*a 2*a^2];
sys=tf(num,den);
step(sys,0:.001:1);
title("step response of system for pole pair at s=1/R+1/Ri,1/R-1/Ri, R=44");
