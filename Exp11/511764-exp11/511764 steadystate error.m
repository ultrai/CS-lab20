clc;
clear all;
num = [36];
denr= [1 6 36];
G=tf(num,denr)
figure(1)
step(G)
title('steady state error')