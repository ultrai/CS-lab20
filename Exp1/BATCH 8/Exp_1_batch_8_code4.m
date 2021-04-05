% Time Response of Second Order system
z=[];
p=[-22+22i -22-22i];
k=1000;
G=zpk(z,p,k)
figure(3);
step(G)
%Addition of zero at -1/22
z=[-1/22];
p=[-22+22i -22-22i];
k=1000;
G=zpk(z,p,k)
figure(4);
step(G)
%Addition of zero at -22
z=[-22];
p=[-22+22i -22-22i];
k=1000;
G=zpk(z,p,k)
figure(5);
step(G)
%Addition of zero at -110
z=[-110];
p=[-22+22i -22-22i];
k=1000;
G=zpk(z,p,k)
figure(6);
step(G)