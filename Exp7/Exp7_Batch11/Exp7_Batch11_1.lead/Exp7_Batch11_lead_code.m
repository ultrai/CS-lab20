%%Design a lead compensator for a unity feedback system with an open-loop 
%%transfer function 
%%G(s) = k/s(s+1)
%%For the specifications of Kv = 10 s-1 and pm = 35º
k=10;
s=tf('s');
g=k/(s^2+s)
t=feedback(g,1)
figure(1)
step(t)
figure(2)
bode(g)
margin(g)
%%lead compensator
Gc=(1+s*0.385)/(1+s*0.162)
G=g*Gc;
T=feedback(G,1)
figure(3)
step(T)
figure(4)
bode(G)
margin(G)
%comparision
figure(5)
step(t,T)
legend('uncompensated system','lead compensated system')
figure(6)
bode(g,G)
legend('uncompensated system','lead compensated system')