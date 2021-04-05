%%Effect of Pole Location on step response of first order system
%%Pole at -1/R
z=[];
p=[-1/12];
k=1;
G1=zpk(z,p,k,'DisplayFormat','time constant')
figure(1)
pzmap(G1)
figure(2)
step(G1)
title('First order system with pole at -1/R , R=12')
%%Pole at -R
z=[];
p=[-12];
k=1;
G2=zpk(z,p,k,'DisplayFormat','time constant')
figure(3)
pzmap(G2)
figure(4)
step(G2)
title('First order system with pole at -R , R=12')
%%Pole at -5R
z=[];
p=[-60];
k=1;
G3=zpk(z,p,k,'DisplayFormat','time constant')
figure(5)
pzmap(G3)
figure(6)
step(G3)
title('First order system with pole at -5R , R=12')
%%comparision
figure(7)
pzmap(G1,G2,G3)
figure(8)
step(G1,G2,G3)
legend('pole at -1/12','pole at -12','pole at -60')


