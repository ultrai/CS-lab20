z=[-100];
p=[-10+30i -10-30i];
k=1000;
sys=zpk(z,p,k);
t=[0:0.001,1]
step(sys);
grid