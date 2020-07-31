clc 
z=[]; 
p=[-0.5+i -0.5-i -1]; 
k1=10; 
k2=20;
k3=30; 
sys=zpk(z,p,1);

sys1=zpk(z,p,k1);
sys2=zpk(z,p,k2);
sys3=zpk(z,p,k3);
t=[0:0.01:20]; 
[y1,t]=step(sys1,t); 
[y2,t]=step(sys2,t); 
[y3,t]=step(sys3,t); 

%step response plot for different gain values
figure(1)
plot(t,y1,t,y2,t,y3);
legend('k=10', 'k=20', 'k=30');
grid 
% root locus plot for open loop transfer function
figure(2) 
rlocus(sys);
 