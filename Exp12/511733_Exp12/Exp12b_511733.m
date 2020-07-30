%%effect of loop gain of a negative feedback system of on stability
z=[]
p=[-0.5+i -0.5-i -1]
k1=10
k2=20
k3=30
G1=zpk(z,p,k1)
G2=zpk(z,p,k2)
G3=zpk(z,p,k3)
t=[0:0.01:20]
[y1,t]=step(G1,t)
[y2,t]=step(G2,t)
[y3,t]=step(G3,t)
figure(8)
plot(t,y1,t,y2,t,y3)
legend('k=1','k=2','k=3')
grid