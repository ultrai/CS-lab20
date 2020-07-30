%%Time Response of First order System
n=[1];
d=[1 4];
G=tf(n,d)
figure(1)
step(G);

%%Time Response of a Second order System
z=[]
p=[-10+30i -10-30i]
k=1000
G=zpk(z,p,k)
figure(2)
step(G)
