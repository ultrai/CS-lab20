%Batch 9 Simulation Results 
num=10;den=[1 1 0];
ucsys=tf(num,den);
s=tf('s');
kvuc=dcgain(s*ucsys);
%uncompensated system
%bode(ucsys),grid on;
[gmuc,pmuc,gcf,pcf]=margin(ucsys);
pm=35-pmuc+5;
alpha=(1-sin(pm*pi/180))/(1+sin(pm*pi/180));
mag=20*log10(1/sqrt(alpha));
gcnew=2.5;
zc=-gcnew*sqrt(alpha);
pc=-gcnew/sqrt(alpha);
comp=zpk([zc],[pc],1/alpha);
%Compensated System
compsys=comp*ucsys;
kv=dcgain(s*compsys);
bode(compsys,'r',comp,'g',ucsys,'b');
legend("compensated","Compensator","Uncompensated");
[gm,pm,gc,pc]=margin(compsys);
hgexport(1,"511883_Results_Lead_compensator.fig");


