%step response for First order system fo pole at s=-R, R=44.
a=44;
s=tf('s');
G=(1)/(s+a);
step(G)
stepinfo(G)
title("step response for First order system fo pole at s=-R, R=44.")