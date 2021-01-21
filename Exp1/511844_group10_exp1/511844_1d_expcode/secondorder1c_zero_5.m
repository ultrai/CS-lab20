%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=5R R=44
clear;
close;
a=44;
num=[-2*a/5 2*a^2];
den=[1 2*a 2*a^2];
sys=tf(num,den);
step(sys,0:.001:0.25);
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=5R R=44");
