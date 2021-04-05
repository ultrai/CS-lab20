%%Effect of P,PI,PD,PID Controllers
num=[1];
den=[1 10 20];
g=tf(num,den);
t=feedback(g,1)
figure(1)
step(g);
%%Introduction of P controller
kp=300;
cont = pid(kp)
g1 = g*cont
t1 = feedback(g1,1)
figure(2)
step(t1,4)
title('Step response with P Controller')
stepinfo(t1)
%%Introduction of PD controller
kp=300;
kd=10;
cont = pid(kp,0,kd)
g2 = g*cont
t2 = feedback(g2,1)
figure(3)
step(t2,4)
title('Step response with PD Controller')
stepinfo(t2)
%%Introduction of PI controller
kp=30;
ki=70;
cont = pid(kp,ki)
g3 = g*cont
t3= feedback(g3,1)
figure(4)
step(t3,4)
title('Step response with PI Controller')
stepinfo(t3)
%%Introduction fo PID controller
kp=350;
ki=300;
kd=50;
cont = pid(kp,ki,kd)
g4 = g*cont
t4 = feedback(g4,1)
figure(5)
step(t4,4)
title('Step response with PID Controller')
stepinfo(t4)
%%Comparision
figure(6)
step(t,4);
hold on
step(t1,4);
hold on
step(t2,4);
hold on
step(t3,4);
hold on
step(t4,4);
legend('feedback system without controller','p controller','pd comtroller','pi controller','pid controller')
grid;