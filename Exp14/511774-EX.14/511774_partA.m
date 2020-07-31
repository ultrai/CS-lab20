clc;
clear all;
%normal tf
num = [10]
den = [1 2 0]
sys = tf(num,den)
figure(1)
rlocus(sys)

% adding pole at -4
den2=[1 6 8 0]
sys1 = tf(num,den2)
figure(2)
rlocus(sys1)

%adding zero at -4
num1 = [10 40]
sys2 = tf(num1,den)
figure(3)
rlocus(sys2)

%adding zero at -4 & -6
num2 = [10 100 240]
sys3 = tf(num2,den)
figure(4)
rlocus(sys3)