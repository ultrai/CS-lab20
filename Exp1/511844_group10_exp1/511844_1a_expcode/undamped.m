clc;
clear;
a=1/44;
s=tf("s");
G=1/(s*s+2*a*a);
step(G)
title('undamped sysytem')