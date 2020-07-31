%%time response of a second order system
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
title('zero @ -1')
grid
%%addition of zero at -10
z = [-10];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(3)

step(G)
title('zero @ -10')
grid
%%addition of zero at -100
z = [-100];
p = [-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(4)
step(G)
title('zero @ -100')
grid