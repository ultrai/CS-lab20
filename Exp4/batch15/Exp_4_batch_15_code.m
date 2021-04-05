% effects of p pi pd pid controllers
num = 1;
den = [1 10 20];
g = tf(num,den);
t = feedback(g,1)
figure(1)
step(t,4);
title('step response of feedback system')
kp = 300;
kd = 10;
ki = 70;
%% introduction of p controller
cont = pid(kp);
g1 = g*cont;
t1 = feedback(g1,1)
figure(2)
step(t1,4);
title('step response of system with p controller')
%% introduction of pd controller
cont = pid(kp,0,kd);
g2 = g*cont;
t2 = feedback(g2,1)
figure(3)
step(t2,4);
title('step response of system with PD controller')
%% introduction of pi controller
cont = pid(kp,ki,0);
g3 = g*cont;
t3 = feedback(g3,1)
figure(4)
step(t3,4);
title('step response of system with PI controller')
%% introduction of pid controller
cont = pid(kp,ki,kd);
g4 = g*cont;
t4 = feedback(g4,1)
figure(5)
step(t4,4);
title('step response of system with PID controller')
%% comparision graph
figure(6)
step(t,4)
hold on;
step(t1,4)
hold on;
step(t2,4)
hold on;
step(t3,4)
hold on;
step(t4,4)
title('step response of all systems compared')
legend('feedback system','p controller','PD controller','PI controller','PID controller');
grid;



