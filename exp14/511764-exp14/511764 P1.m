clc;
clear all;
%Normal tf
num = [10]
den = [1 2 0]
sys = tf(num,den)
figure(1)
rlocus(sys1)

% Adding pole at -4
den2=[1 6 8 0]
sys2 = tf(num,den2)
figure(2)
rlocus(sys2)

%Adding zero at -4
num2 = [10 40]
sys3 = tf(num2,den)
figure(3)
rlocus(sys3)

%Asdding zero at -4 & -6
num3 = [10 100 240]
sys4= tf(num3,den)
figure(4)
rlocus(sys4)