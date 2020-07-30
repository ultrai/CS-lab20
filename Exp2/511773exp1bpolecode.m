%% Time Response of Second order system
z=[];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(3);
step(G)
%% Addition of Pole at -1
z=[];
p=[-10+30i -10-30i -1];
k=1000;
G=zpk(z,p,k)
figure(4);
step(G)
%% Addition of Pole at -10
z=[];
p=[-10+30i -10-30i -10];
k=1000;
G=zpk(z,p,k)
figure(5);
step(G)
%% Addition of Pole at -100
z=[];
p=[-10+30i -10-30i -100];
k=1000;
G=zpk(z,p,k)
figure(6);
step(G)
