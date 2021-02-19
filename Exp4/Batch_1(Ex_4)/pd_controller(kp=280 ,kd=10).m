num=1;
den=[1 10 20];
plant=tf(num, den);
kp=280;
kd=10;
contr=tf([kd  kp],1);
sys_cl=feedback(contr*plant,1);
t=0:0.01:2;
step(sys_cl,t);