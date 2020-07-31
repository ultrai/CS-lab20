num=1; 
den=[1 10 20]; 
g1=tf (num,den) 
t1=feedback(g1,1) 
figure(1)
step(t1,'g') 
 
%Step Response with some p controller
num1=10; 
den1=[1 10 20]; 
g2=tf(num1,den1) 
t2=feedback(g2,1) 
figure(2)
step(t2,'m') 
hold on

%Step Response with p d controller
Kp=500;
Kd=10; 
numc=[Kd Kp]; 
numo=conv(numc,num)
deno=den 
g3=tf(numo,deno)
t3=feedback(g3,1)
step(t3,'b')
hold on

Kp=500;
Kd=5; 
numc=[Kd Kp];
numo=conv(numc,num)
deno=den 
g3=tf(numo,deno)
t4=feedback(g3,1) 
step(t4,'y')
hold on

Kp=500; 
Kd=.01;
numc=[Kd Kp];
numo=conv(numc,num)
deno=den 
g3=tf(numo,deno)  
t5=feedback(g3,1) 
step(t5,'r') 
hold on
 
 
 