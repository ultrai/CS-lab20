%%Effect of Pole Location on step response of Second order system
%%with pole pairs as {-a+ai,-a-ai} for a=1/12,12,5*12 
%%for a=1/12
z=[];
p=[-0.083+0.083i -0.083-0.083i];
k=1;
G1=zpk(z,p,k)
figure(1)
pzmap(G1)
figure(2)
step(G1)
title('Second order system with pole pair (-a+ai,-a-ai) , a=1/12')
%%for a=12
z=[];
p=[-12+12i -12-12i];
k=1;
G2=zpk(z,p,k)
figure(3)
pzmap(G2)
figure(4)
step(G2)
title('Second order system with pole pair (-a+ai,-a-ai) , a=12')
%%for a=5*12
z=[];
p=[-60+60i -60-60i];
k=1;
G3=zpk(z,p,k)
figure(5)
pzmap(G3)
figure(6)
step(G3)
title('Second order system with pole pair (-a+ai,-a-ai) , a=5*12')
%%comparision
figure(7)
pzmap(G1,G2,G3)
figure(8)
step(G1,G2,G3)
legend('poles at (-1/12+1/12i,-1/12-1/12i)','poles at (-12+12i -12-12i)','poles at (-60+60i -60-60i)')