%%effect of loop gain of a negative feedback system on stability
z=[]
p=[-0.5+i -0.5-i -1];
k1=3;
k2=4;
k3=5;
G1=zpk(z,p,k1)
G2=zpk(z,p,k2)
G3=zpk(z,p,k3)
t=[0:0.01:20];
[y1,t]=step(G1,t)
[y2,t]=step(G2,t)
[y3,t]=step(G3,t)
figure(1)
plot(t,y1,t,y2,t,y3)
legend('k=3', 'k=4', 'k=5')
grid 