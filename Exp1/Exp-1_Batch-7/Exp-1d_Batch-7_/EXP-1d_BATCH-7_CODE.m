%% if a system has pole pairs (-a+ai,-a-ai) 
%% at a=(r)
r=26;
z=[];
p=[-26+26i,-26-26i];
k=1000;
sys=zpk(z,p,k)
figure(14)
step(sys);
title('system having pole pairs (a+ai,-a-ai) at a=(r)')


%% at a= R inverse
a=1/26;
z=[];
p=[-a+i*a,-a-i*a];
k=1000;
sys1=zpk(z,p,k)
figure(15);
step(sys1);
title('system having pole pairs (a+ai,-a-ai) at a=(1/r)')

%% pole at 5R
r=26;
z=[];
k=1000;
a=5*r;
p=[-a+a*i,-a-a*i];
sys2=zpk(z,p,k);
figure(16);
step(sys2);
title('system having pole pairs (a+ai,-a-ai) at a=5r')

%% zero at R
n=[1 26];
d=[1 6 9];
sys3=tf(n,d);
figure(17);
step(sys3);
title('second order system having zero at R')

%% zero at 5R
r=26;
a=5*r;
z=[1 a];
p=[1 6 a];
sys4=tf(z,p);
figure(18);
step(sys4);
title('second order system having zero at 5R')

%% zero at inverse R
r=1/26;
z=[1 r];
p=[1 6 9];
sys5=tf(z,p);
figure(19);
step(sys5);
title('second order system having zero at 1/R')