%Compensate the system with the open – loop transfer function 
%G(s) = k/s(s+1)(s+5)
%To meet the following specifications:
%• Damping Ratio g = 0.3
%• Settling time ts = 12s
%• Velocity error constant Kv >= 8 s-1
k=40;
s=tf('s');
g=k/(s*(s+1)*(s+5))
t=feedback(g,1)
figure(1)
step(t)
figure(2)
bode(g)
margin(g)
%lag compensator
Gc=(1+5*s)/(1+40*s)
G=g*Gc;
T=feedback(G,1)
figure(3)
step(T)
figure(4)
bode(G)
margin(G)
damp(T)
stepinfo(T)
%comparision
figure(5)
step(t,T)
legend('uncompensated system','lag compensated system')
figure(6)
bode(g,G)
legend('uncompensated system','lag compensated system')
