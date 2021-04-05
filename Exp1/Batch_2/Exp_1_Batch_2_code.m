clc;
clear all
%%step response of first order unity feedback system
%%G(s)=1/(s+29)
p=[0 1];
q=[1 29];
sys=tf(p,q);
t=feedback(sys,1);
figure(1)
step(t);
title('step response of first order system');
stepinfo(sys);

%%impulse response of first order unity feedback system
%%G(s)=1/(s+29)
p=[0 1];
q=[1 29];
sys=tf(p,q);
t=feedback(sys,1);
figure(2)
impulse(t);
title('impulse response of first order system');

%%step response of second order underdamped system
%%G(s)=w^2/(s^2+2*e*w*s+w^2)
w=30;
e=0.5;
p=[0 0 w*w];
q=[1 2*e*w w*w];
sys=tf(p,q);
figure(3)
step(sys);
title('step response of second order underdamped system');

%%step response of second order critically damped system
%%G(s)=w^2/(s^2+2*e*w*s+w^2)
w=30;
e=1;
p=[0 0 w*w];
q=[1 2*e*w w*w];
sys=tf(p,q);
figure(4)
step(sys);
title('step response of second order critically damped system');

%%step response of second order over damped system
%%G(s)=w^2/(s^2+2*e*w*s+w^2)
w=30;
e=2;
p=[0 0 w*w];
q=[1 2*e*w w*w];
sys=tf(p,q);
figure(5)
step(sys);
title('step response of second order overdamped system');

%%effect of poles and zeores
z=[];
p=[-29+29i -29-29i];
k=1000;
sys=zpk(z,p,k)
figure(6)
step(sys);
title('step response of second order system');

%%addition of pole at -1/29
z=[];
p=[-29+29i -29-29i -1/29];
k=1000;
sys1=zpk(z,p,k)
figure(7)
step(sys1);
title('step response of second order system pole at -1/29');

%%addition of pole at -29
z=[];
p=[-29+29i -29-29i -29];
k=1000;
sys2=zpk(z,p,k)
figure(8)
step(sys2);
title('step response of second order system pole at -29');


%%addition of pole at -145
z=[];
p=[-29+29i -29-29i -145];
k=1000;
sys3=zpk(z,p,k)
figure(9)
step(sys3);
title('step response of second order system pole at -145');

%%addition of zero at -1/29
z=[-1/29];
p=[-29+29i -29-29i];
k=1000;
sys4=zpk(z,p,k)
figure(10)
step(sys4);
title('step response of second order system zero at -1/29');

%%addition of zero at -29
z=[-29];
p=[-29+29i -29-29i];
k=1000;
sys5=zpk(z,p,k)
figure(11)
step(sys5);
title('step response of second order system zero at -29');

%%addition of zero at -145
z=[-145];
p=[-29+29i -29-29i];
k=1000;
sys6=zpk(z,p,k)
figure(12)
step(sys6);
title('step response of second order system zero at -145');