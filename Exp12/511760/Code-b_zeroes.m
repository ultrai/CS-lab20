% Time Response of a second order system﻿
z = [];
p = [-10+30i -10-30i];
k = 100;
sys = zpk(z, p, k)
figure(1)
step(sys);
grid

% zero at -1
z = [-1];
sys = zpk(z, p, k)
figure(2)
step(sys);
grid

% zero at -10
z = [-10];
sys = zpk(z, p, k)
figure(3)
step(sys);
grid

% zero at -100
z = [-100];
sys = zpk(z, p, k)
figure(4)
step(sys);
grid