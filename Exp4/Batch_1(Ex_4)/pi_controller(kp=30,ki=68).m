num=1;
den=[1 10 20];
plant=tf(num, den);
kp=30;
kd=68;
contr=tf([kd  kp],[1 0]);
sys_cl=feedback(contr*plant,1);
 
step(sys_cl,t);