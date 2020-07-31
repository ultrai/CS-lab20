%%PID CONTROLLERS

%%Open Loop Step Response
num=[1];
den=[1 10 20];
plant=tf(num,den);
figure(1);
step(plant)
title('open loop')
%%P Control
Kp=300;
contr=Kp;
sys=feedback(contr*plant,1);
figure(2);
step(sys)
title('Kp=300')

%% PD control
Kp=300;
Kd=10;
contr=tf([Kd Kp],1);
sys=feedback(contr*plant,1);
figure(3);
step(sys)
title('kp=300,kd=10')

%%  PI Control
Kp=30;
Ki=70;
contr=tf([Kp Ki],[1 0]);
sys=feedback(contr*plant,1);
figure(4);
step(sys)
title('p=30,ki=70')

%% PID Control
Kp=350;
Kd=50;
Ki=300
contr=tf([Kd Kp Ki],[1,0]);
sys=feedback(contr*plant,1);
figure(5);
step(sys)
title('Kp=350,Ki=300,kd=50')
