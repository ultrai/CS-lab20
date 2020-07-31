% open loop response and closed loop
num=1;
den=[1 5 6];
plant=tf(num,den);
step(plant)
hold on
sys=feedback(cont*plant,1);
t=0:0.01:2;
step(sys,t)
s= tf('s');
num=[100]
den=[1 5 6]
G=tf(num,den)
cont1=pid(2)
p=feedback(G*cont1,1);



cont2 = pid(2,1.2)%pi controller
pi = feedback(G*cont2,1);



cont3= pid(2,0,1.2);%pd controller
pd = feedback(G*cont3,1)




cont4 = pid(10,1.2,1.2);
pid=feedback(G*cont4,1)
steplot(p,pi,pd,pid,1)

