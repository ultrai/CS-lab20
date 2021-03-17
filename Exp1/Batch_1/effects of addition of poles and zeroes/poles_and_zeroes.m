%%effect of poles and zeros
z=[];
p=[-86+86i -86-86i];
k=1000;
sys=zpk(z,p,k)
figure(1);
step(sys);
title('Step Response of a second order system');
%%Addition of pole at -1/86
z=[];
p=[-86+86i -86-86i -1/86];
k=1000;
sys1=zpk(z,p,k)
figure(2);
step(sys1);
title('Step Response (additional pole at -1/86)');
%%Addition of pole at -86
z=[];
p=[-86+86i -86-86i -86];
k=1000;
sys2=zpk(z,p,k)
figure(3);
step(sys2);
title('Step Response (additional pole at -86)');
%%Addition of pole at -430
z=[];
p=[-86+86i -86-86i -430];
k=1000;
sys3=zpk(z,p,k)
figure(4);
step(sys3);
title('Step Response (additional pole at -430)');
%%Addition of zero at -1/86
z=[-1/86];
p=[-86+86i -86-86i];
k=1000;
sys4=zpk(z,p,k)
figure(5);
step(sys4);
title('Step Response (additional zero at -1/86)');
%%Addition of zero at -86
z=[-86];
p=[-86+86i -86-86i];
k=1000;
sys5=zpk(z,p,k)
figure(6);
step(sys5);
title('Step Response (additional zero at -86)');
%%Addition of zero at -430
z=[-430];
p=[-86+86i -86-86i];
k=1000;
sys6=zpk(z,p,k)
figure(7);
step(sys6);
title('Step Response (additional zero at -430)');
