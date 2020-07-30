%%time response of a second order system
z = [];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(1)
title('pole not added')

step(G)
grid
%%addition of pole at -1
z = [];
p = [-10+30i -10-30i -1];
k=1000;
G=zpk(z,p,k)
figure(2)
step(G)
title('pole @ -1')
grid
%%addition of pole at -10
z = [];
p = [-10+30i -10-30i -10];
k=1000;
G=zpk(z,p,k)
figure(3)

step(G)
title('pole @ -10')
grid
%%addition of pole at -100
z = [];
p = [-10+30i -10-30i -100];
k=1000;
G=zpk(z,p,k)
figure(4)
step(G)
title('pole @ -100')
grid
