%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-1/R R=44
clc;
clear;
close;
a=44;
num=[2*a^3 2*a^2];
den=[1 2*a 2*a^2];
sys=tf(num,den);
step(sys,0:.001:0.25);
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-1/R R=44");
