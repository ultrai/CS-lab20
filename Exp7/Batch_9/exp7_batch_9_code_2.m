%Batch 9 Simulation Results 
clc;
clear;
syms z;
s=tf('s');
fx=(z)/(z*(1+(.5*z))*(1+0.1*z));
y=limit(fx);
clear z;
ucsys=25/(s*(1+(.5*s))*(1+(0.1*s)));
bode(ucsys),grid on;
[gmuc,pmuc,Phase_crossover,Gain_crossover]=margin(ucsys);
beta=10^(18/20)
%New gain cross over freqency = 2rad/s
w2=0.5;t=2;
w1=1/(beta*t);
%lag compensator
Glag=(1+t*s)/(1+beta*t*s);
G1=Glag*ucsys;
bode(G1,'r',Glag,'g',ucsys,'b'),grid on;
legend("compensated with lag","Compensator","Uncompensated");
[gmlgc,pmlgc,Phase_crossover_lag_added,Gain_crossover_lag_added]=margin(G1);
alpha=1/beta;
fi=asind((1-alpha)/(1+alpha));
w1=3.8*sqrt(alpha);
t2=1/w1;
w2=1/(alpha*t2);
Glead=(1+0.746*s)/(1+0.093*s);
compsys=Glag*Glead*ucsys;
bode(compsys,'y',Glead,'m',G1,'r',Glag,'g',ucsys,'b'),grid on;
legend("Lag-Lead Compensated","lead Compensater","compensated with lag","Compensator","Uncompensated");
[gmlaglead,pmlaglead,PCf,GCf]=margin(compsys);
hgexport(1,"511883_Results_Lag_Lead_compensator.fig");




