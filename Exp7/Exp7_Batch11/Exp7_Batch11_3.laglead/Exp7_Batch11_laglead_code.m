%The open – loop transfer function of a unity feedback control system is a given by
%G(s) = k/s(1+0.5s)(1+0.1s)
%Compensate the system to meet the following specifications:
%• Velocity error constant Kv >= 25 s -1
%• Phase Margin >= 60 º
%• Band width wb = 10 rad/s
k=25;
s=tf('s');
g=k/(s*(0.5*s+1)*(0.1*s+1))
t=feedback(g,1)
figure(1)
step(t)
figure(2)
bode(g)
margin(g)
%lag section compensated system
Gc1=(1+2*s)/(1+16*s)
G1=g*Gc1;
%lag lead compensated system
Gc2=(1+0.746*s)/(1+0.093*s)
G=g*Gc1*Gc2
T=feedback(G,1)
figure(3)
step(T)
figure(4)
bode(G)
margin(G)
bandwidth(T)
%comparision
figure(5)
step(t,T)
legend('uncompensated system','lag-lead compensated system')
figure(6)
bode(g,G1,G)
legend('uncompensated system','lag compensated system','lag-lead compensated system')
