clc;
clear;
a=1/44;
s=tf("s");
G=1/(s*s+2*a*s+a*a);
step(G)
title('criticallydamped sysytem')