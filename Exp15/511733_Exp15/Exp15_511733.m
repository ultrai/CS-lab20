%%P,PI,PD,PID controller

%%Openloop Step Response
n=[1]
d=[1 10 20]
plant=tf(n,d)
figure(1)
step(plant)

%%P Control
Kp=300;
cont=Kp
sys=feedback(cont*plant,1)
figure(2)
step(sys)

%%PI Control
Kp=30;
Ki=70
cont=tf([Kp Ki],[1 0])
sys=feedback(cont*plant,1)
figure(3)
step(sys)

%%PD Control
Kp=300;
Kd=10
cont=tf([Kd Kp],1)
sys=feedback(cont*plant,1)
figure(4)
step(sys)

%%PID Control
Kp=350;
Kd=50
Ki=300
cont=tf([Kd Kp Ki],[1 0])
sys=feedback(cont*plant,1)
figure(5)
step(sys)