% Time Response of a second order system﻿
z = [];
p = [-10+30i -10-30i];
k = 100;
sys = zpk(z, p, k)
figure(1)
step(sys);
grid

% pole at -1
p = [-10+30i -10-30i -1];
sys = zpk(z, p, k)
figure(2)
step(sys);
grid

% pole at -10
p = [-10+30i -10-30i -10];
sys = zpk(z, p, k)
figure(3)
step(sys);
grid

% pole at -100
p = [-10+30i -10-30i -100];
sys = zpk(z, p, k)
figure(4)
step(sys);
grid