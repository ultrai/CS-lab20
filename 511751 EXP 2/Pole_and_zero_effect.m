%Effects of adding poles to the system
clc;
z=[];
p=[-20+40i -20-40i];
p1=[-20+40i -20-40i -1];
p2=[-20+40i -20-40i -10];
p3=[-20+40i -20-40i -100];
z1=[-1];
z2=[-10];
z3=[-100];
k=1000;
sys=zpk(z,p,k)

figure(1);
t=[0:0.001:1];
step(sys,t);

%Effect of poles
sys1=zpk(z,p1,k)
figure(2);
step(sys1,t);

sys2=zpk(z,p2,k);
figure(3);
step(sys2,t);

sys3=zpk(z,p3,k);
figure(4);
step(sys3,t);

%Effect of zeros
sys4=zpk(z1,p,k);
figure(5);
step(sys4,t);

sys5=zpk(z2,p,k);
figure(6);
step(sys5,t);

sys6=zpk(z3,p,k);
figure(7);
step(sys6,t);
