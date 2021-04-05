%effect of P,PI,PD,PID contoller
num=[1];
den=[1 10 20];
g=tf(num,den);
t=feedback(g,1)
figure(1);
step(t,4);
kp=300;
kd=10;
ki=70;
title('step response of a second order system without p pi pd pid');
%effect of P contoller
const=pid(kp);
g1=g*const;
t1=feedback(g1,1)
figure(2);
step(t1,4);
title('step response of a second order system with p');
%effect of PD contoller
const=pid(kp,0,kd);
g2=g*const;
t2=feedback(g2,1)
figure(3);
step(t2,4);
title('step response of a second order system with pd');
%effect of PI contoller
const=pid(kp,ki);
g3=g*const;
t3=feedback(g3,1)
figure(4);
step(t3,4);
title('step response of a second order system with PI');
%effect of PID contoller
const=pid(kp,ki,kd);
g4=g*const;
t4=feedback(g4,1)
figure(5);
step(t4,4);
title('step response of a second order system with PID');
%comparision between P,PD,PI,PID graphs
figure(6);
step(t,4);
hold on
step(t1,4);
hold on
step(t2,4);
hold on
step(t3,4);
hold on
step(t4,4);
title( 'comparision between feedback system p controller pD controller pI controller pIDcontroller');
legend('feedback system','p controller','pD controller','pI controller','pIDcontroller');
grid;

