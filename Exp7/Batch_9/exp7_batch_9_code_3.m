%Batch 9 Simulation Results 
clc;
clear;
ts=12;
zeta=0.3;
kv=8;
wn=3/(ts*zeta);
s=tf('s');
wb=wn*sqrt(1-(2*zeta^2)+sqrt(2-(4*zeta^2)+(4*zeta^4)));
pm=atan(2*zeta/sqrt(sqrt(1+(4*zeta^4))-(2*zeta^2)))*180/pi
syms z;
fx=(z/5)/(z*(1+z)*(1+0.2*z));
y=limit(fx);
clear z;
k=kv/y;
k=double(k);
ucsys=(k/5)/(s*(1+s)*(1+0.2*s));
bode(ucsys),grid on;
[gmuc,pmuc,gcf,pcf]=margin(ucsys)
wg2=.8;
pm2=pm+10;
pm3=pm*pi/180;
w2=0.8/4;
t=1/w2;
beta=10^(18/20);
w1=1/(beta*t);
Gc=(1+5*s)/(1+40*s);
compsys=Gc*ucsys;
bode(compsys,'r',Gc,'g',ucsys,'b');
legend("compensated","Compensator","Uncompensated");
[gm,pm,gc,pc]=margin(compsys)
hgexport(1,"511883_Results_Lag_compensator_prob2.fig");

