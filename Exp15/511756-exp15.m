%% open loop step response
num=[1];
den=[1 10 20];
plant=tf(num,den);
figure(1);
step(plant);
%%proportional control
Kp=300
contr=Kp;
sys=feedback(contr*plant,1);
figure(2);
step(sys);
%%proportional derivative control
Kp=300;
Kd=10;
contr=tf([Kd Kp],1);
sys=feedback(contr*plany,1);
figure(3);
step(sys);
%%proportional integral control
Kp=30;
Ki=70;
contr=tf([Kp Ki],[1 0]);
figure(4);
step(sys)
%%proportional integral derivative control
Kp=350;
Kd=50;
Ki=300;
contr=tf([Kd Kp Ki],[1,0]);
sys=feedback(contr*plant,1);
figure(5);
step(sys)
