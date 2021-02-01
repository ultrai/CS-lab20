clc
close all
clear
% overdamped system %
num = [9];
den = [1 12 9];
sys = tf(num,den)
step(sys, 0:0.1:8);
geta= den(2)/(2*sqrt(den(3)))
delay_time=(1+0.7*geta)/sqrt(den(3))
title('step response of overdamped system');
stepinfo(sys)
