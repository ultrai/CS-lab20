clc;
clear;
a=1/44;
s=tf("s");
G=1/(s*s+3*a*s+a*a);
step(G)
title('overdamped sysytem')