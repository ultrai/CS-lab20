%% Time response of first order sysytem
num=[1];
den=[1 4];
G=tf(num,den);
figure(1);
step(G)
%% Time response of second order system
num=[1];
den=[1 3 90];
G=tf(num,den);
figure(2);
step(G)
%% Time respomse of second order system
z=[];
p=[-10+30j -10-10j];
k=1000;
G=zpk(z,p,k);
figure(3);
step(G)
%%addition of poles
%%Addition of pole at -1
z=[];
p=[-10+30j -10-10j -1];
k=1000;
G=zpk(z,p,k);
figure(4);
step(G)
%%Addition of pole at -10
z=[];
p=[-10+30j -10-10j -10];
k=1000;
G=zpk(z,p,k);
figure(5);
step(G)
%%Addition of pole at -100
z=[];
p=[-10+30j -10-10j -100];
k=1000;
G=zpk(z,p,k);
figure(6);
step(G)
%%Addition of zero
%%Addition of zero at -1
z=[-1];
p=[-10+30j -10-10j ];
k=1000;
G=zpk(z,p,k);
figure(7);
step(G)
%%Addition of zero at -10
z=[-10];
p=[-10+30j -10-10j ];
k=1000;
G=zpk(z,p,k);
figure(8);
step(G)
%%Addition of zero at -100
z=[-100];
p=[-10+30j -10-10j ];
k=1000;
G=zpk(z,p,k);
figure(9);
step(G)
%%effect of loop gain of negative feedback system on stability
z=[];
p=[-0.5+j -0.5-J -1];
k1=1;
k2=2;
k3=3;
G1=zpk(z,p,k1);
G2=zpk(z,p,k2);
G3=zpk(z,p,k3);
t=[0:0.01:20];
[y1,t]=step(G1,t);
[y2,t]=step(G2,t);
[y3,t]=step(G3,t);
figure(1);
plot(t,y1,t,y2,t,y3);
legend('k=1','k=2','k=3');
grid

