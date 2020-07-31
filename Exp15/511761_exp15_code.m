%%open loop step response
num=[1];
den=[1 10 20];
plant=tf(num,den);
figure(1);
step(plant)


%%Proportional control
Kp=300;
contr=Kp;
sys=feedback(contr*plant,1);
figure(2);
step(sys)

%%Proportional Derivative control
Kp=300;
Kd=10;
contr=tf([Kp Kd],1);
sys=feedback(contr*plant,1);
figure(3);
step(sys)

%%Proportional Integral control
Kp=300;
Ki=70;
contr=tf([Kp Ki],[1 0]);
sys=feedback(contr*plant,1);
figure(4);
step(sys)

%%Proportional Integral Derivative control
Kp=350;
Ki=50;
Ki=300;
contr=tf([kd Kp Ki],[1 0]);
sys=feedback(contr*plant,1);
figure(5);
step(sys)