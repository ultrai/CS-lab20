%%effect of poles and zeros
z=[];
p=[-15+35i -15-35i];
k=1000;
sys=zpk(z,p,k)
figure(1);
step(sys);
title('Step Resonse of a second order system');
%%Addition of pole at -1
z=[];
p=[-15+35i -15-35i -1];
k=1000;
sys1=zpk(z,p,k)
figure(2);
step(sys1);
title('Step Response(additional pole at -1)');
%%Addition of pole at -10
z=[];
p=[-15+35i -15-35i -10];
k=1000;
sys2=zpk(z,p,k)
figure(3);
step(sys2);
title('Step Response(additional pole at -10)');
%%Addition of pole at -100
z=[];
p=[-15+35i -15-35i -100];
k=1000;
sys3=zpk(z,p,k)
figure(4);
step(sys3);
title('Step Response(additional pole at -100)');
%%Addition of zero at -1
z=[-1];
p=[-15+35i -15-35i];
k=1000;
sys4=zpk(z,p,k)
figure(5);
step(sys4);
title('Step Response(additional zero at -1)');
%%Addition of zero at -10
z=[-10];
p=[-15+35i -15-35i];
k=1000;
sys5=zpk(z,p,k)
figure(6);
step(sys5);
title('Step Response(additional zero at -10)');
%%Addition of zero at -100
z=[-100];
p=[-15+35i -15-35i];
k=1000;
sys6=zpk(z,p,k)
figure(7);
step(sys6);
title('Step Response(addtional zero at -100)');