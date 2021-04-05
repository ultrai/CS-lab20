%zeigler nicholas method
s=tf('s');
sys=1/(s^2 + 10*s + 20)
figure(1);
step(sys);
%finding L,K,T from graph
L=0.0509;
K=0.005;
T=0.738-L;
%finding KP,KI,KD from table
KP=1.2*(T/L)
KI=KP/(2*L)
KD=KP*0.5*L
%effect of P,PI,PD,PID contoller ZEIGLER METHOD
num=[1];
den=[1 10 20];
g=tf(num,den);
t=feedback(g,1)
figure(2);
step(t,4);
const=pid(KP,KI,KD)
g4=g*const;
t4=feedback(g4,1)
figure(3);
step(t4,4);