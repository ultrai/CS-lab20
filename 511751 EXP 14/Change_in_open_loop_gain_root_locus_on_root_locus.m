%change in  open loop gain
clc;
clear;
close all;
s=tf('s');
G=(2*s+1)/(s^2+3*s+2);

%for K=0.8
 k0=0.8;
 plant=feedback(G*k0,-1);
 figure(1)
 zpk(plant);
 rlocus(plant);
 title('Root Locus for K=0.8');
 
%for K=0.5
k0=0.4;
 plant=feedback(G*k0,-1);
 figure(2)
 zpk(plant);
 rlocus(plant);
  title('Root Locus for K=0.5');