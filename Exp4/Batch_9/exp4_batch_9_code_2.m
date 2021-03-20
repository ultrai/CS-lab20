clc;
clear;
close all;
s=tf('s');
G=1/(s^2+(10*s)+20);
G1=feedback(G,1);
[y,t]=step(G);
figure(1)
plot(t,y);
%Differnciating twice to find Inflation Point
yp=diff(y);
yp=diff(yp);
t_infl=fzero(@(T) interp1(t(2:end-1),yp,T,'linear','extrap'),0);
y_infl=interp1(t,y,t_infl,'linear');
hold on
plot(t_infl,y_infl,"ro")
%For drawing tangent
h=mean(diff(t));
dy=gradient(y,h);
[~,idx]=max(dy);
b=[t([idx-1,idx+1]) ones(2,1)] \ y([idx-1,idx+1]);
tv=[-b(2)/b(1); (1-b(2))/b(1)];
f=[tv ones(2,1)]*b;
hold on
plot(tv,f,'-r','LineWidth',1.5);
ylim([0 max(y)])
%Calculation of TI and TD
L=tv(1);
T=tv(2)-tv(1);
kp=1.2*T/L;
Ti=2*L;Td=0.5*L;
ki=kp/Ti;
kd=kp*Td;

cont=pid(kp,ki,kd);
G7=feedback(cont*G,1);
figure(2)
t=0:0.01:2;
step(G7,t);
title("Ziegler-Nicolas method");
stepinfo(G7)

hgexport(2,"511883_Ziegler_result.fig");

