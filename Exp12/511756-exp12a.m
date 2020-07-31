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
