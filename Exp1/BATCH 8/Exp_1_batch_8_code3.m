% Time Response of Second Order system
z=[];
p=[-22+22i -22-22i];
k=1000;
G=zpk(z,p,k)
figure(3);
step(G)
%Additionof pole at -1/22
z=[];
p=[-22+22i -22-22i -1/22];
k=1000;
G=zpk(z,p,k)
figure(4);
step(G)
%Additionof pole at -22
z=[];
p=[-22+22i -22-22i -22];
k=1000;
G=zpk(z,p,k)
figure(5);
step(G)
%Additionof pole at -110
z=[];
p=[-22+22i -22-22i -110];
k=1000;
G=zpk(z,p,k)
figure(6);
step(G)