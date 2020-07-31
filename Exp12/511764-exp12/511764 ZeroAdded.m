%%Time Response of a Second Order System
z = [];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(1)
title('pole not added')

step(G)
grid
%%addition of zero at -1
z = [-1];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(2)
step(G)
title('zero -1')
grid

%% Addition of Zero at -10
z = [-10];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(3)

step(G)
title('zero -10')
grid
%% Addition of Zero at -100
z = [-100];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(4)
step(G)
title('zero  -100')
grid