%open loop step response
num=(1);
den=[1 10 20];
plant=tf(num,den);
figure(1);
step(plant)
%proportional control
kp=300;
contr=kp;
sys=feedback((contr*plant),1);
figure(2);
step(sys)
%pd control
kp=300;
kd=10;
contr=tf([kd kp],1);
sys=feedback((contr*plant),1);
figure(3);
step(sys)
%pi control
kp=30;
ki=70;
contr=tf([kp ki],[1 0]);
sys=feedback((contr*plant),1);
figure(4);
step(sys)
%pid controller
kp=350;
kd=50;
ki=300;
contr=tf([kd kp ki],[1 0]);
sys=feedback((contr*plant),1);
figure(5);
step(sys)

