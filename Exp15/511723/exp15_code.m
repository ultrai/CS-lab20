%%Open loop step response of system
num=[1];
den=[1 10 20];
plant=tf(num,den);
figure(1);
step(plant)
%%Proportional control(P control)
Kp=300;
controlvalue=Kp;
G=feedback(controlvalue*plant,1);
figure(2);
step(G)
%%Proportional Derivative control(PD control)
Kp=300;
Kd=10;
controlvalue=tf([Kd Kp],1);
G=feedback(controlvalue*plant,1);
figure(3);
step(G)
%%Proportional Integral control(PI control)
Kp=30;
Ki=70;
controlvalue=tf([Kp Ki],[1 0]);
G=feedback(controlvalue*plant,1);
figure(4);
step(G) 
%%Proportional Integral Derivative control(PID control)
Kp=350;
Kd=50;
Ki=300;
controlvalue=tf([Kd Kp Ki],[1,0]);
G=feedback(controlvalue*plant,1);
figure(5);
step(G) 