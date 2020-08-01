%%Addition of Poles
%%Time Response of Second Order System
z=[];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(3);
step(G)

%%Addition of Pole at -1
z=[];
p=[-10+30i -10-30i -1];
k=1000;
G=zpk(z,p,k)
figure(4);
step(G)

%%Addition of Pole at -10
z=[];
p=[-10+30i -10-30i -10];
k=1000;
G=zpk(z,p,k)
figure(5);
step(G)

%%Addition of Pole at -100
z=[];
p=[-10+30i -10-30i -100];
k=1000;
G=zpk(z,p,k)
figure(6);
step(G)

%%Addition of Zeroes
%%Time Response of Second Order System
z=[];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(3);
step(G)

%%Addition of Zer0 at -1
z = [-1];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(4);
step(G)

%%Addition of Zero at -10
z=[-10];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(5);
step(G)

%%Addition of Zero at -100
z=[-100];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(6);
step(G)

%%effect of loop gain of negative feedback on stability
z=[]
p=[-0.5+j -0.5-j -1];
k1=1;
k2=2;
k3=3;
G1=zpk(z,p,k1)
G2=zpk(z,p,k2)
G3=zpk(z,p,k3)
t=[0:0.01:20];
[y1,t]=step(G1,t)
[y2,t]=step(G2,t)
[y3,t]=step(G3,t)
figure(1)
plot(t,y1,t,y2,t,y3)
legend('k=1','k=2','k=3')
grid