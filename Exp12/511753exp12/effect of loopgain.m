clc;
z=[];
p=[-0.5+i -0.5-i -1];
k1=5;
k2=10;
k3=15;
sys=zpk(z,p,1);
sys1=zpk(z,p,k1);
sys2=zpk(z,p,k2);
sys3=zpk(z,p,k3);
t=[0:0.001:20];
[y1,t]=step(sys1,t);
[y2,t]=step(sys2,t);
[y3,t]=step(sys3,t);
%%step response plot different gain values
figure(1)
plot(t,y1,t,y2,t,y3);
title('Step Response for different loop gains');
legend('k=5','k=10','k=15');
grid;
%%root locus plot for open loop transfer function
figure(2)
rlocus(sys);
title('Root Locus of the Open Loop Transfer Function');