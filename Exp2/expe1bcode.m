z=[];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(3);
step(G)
%% Addition of zero at -1
z=[-1];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(4);
step(G)
%% Addition of zero at -10
z=[-10];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(5);
step(G)
%% Addition of zero at -100
z=[-100];
p=[-10+30i -10-30i];
k=1000;
G=zpk(z,p,k)
figure(6);
step(G)