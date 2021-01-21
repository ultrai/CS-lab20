%step response for First order system fo pole at s=-R,zero at s=1/R, R=44
a=44;
s=tf('s');
G=(-a*s+1)/(s+a);
step(G)
stepinfo(G)
title("step response for First order system fo pole at s=-R,zero at s=1/R, R=44.")