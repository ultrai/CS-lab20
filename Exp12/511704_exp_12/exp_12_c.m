clc
z=[]
p=[-0.5+i -0.5-i -1]; 
k1=1;
k2=2;
k3=3;
sys1=zpk(z,p,k1)
sys2=zpk(z,p,k2) 
sys3=zpk(z,p,k3)
t=[0:0.01:20]; 
[y1,t]=step(sys1,t)
[y2,t]=step(sys2,t) 
[y3,t]=step(sys3,t) 
plot(t,y1,t,y2,t,y3)
legend('k=1', 'k=2', 'k=3') 
grid