clc;
clear all;
num = [36];
denr= [1 6 36];
G1=tf(num,denr)
figure(1)
step(G1)
title('steady state error is:')