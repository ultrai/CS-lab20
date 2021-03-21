%frequency response for 2nd order system
w=input('enter the natural frequency: ');
e=input('enter the damping ratio: ');
  num=[w*w];
  den=[1 2*w*e w*w];
  T=tf(num,den);       %CLTF
  [mr,wr] = getPeakGain(T)
  wb = bandwidth(T)
  g=T/(1-T);            %OLTF
  figure(1) 
  bode(g);
  margin(g);
%Example for a second order   
s=tf('s');
T_1=(100 /(s^2+10*s+100)); %CLTF
[mr1,wr1] = getPeakGain(T_1)
wb1 = bandwidth(T_1)
G_1 = T_1 / (1 - T_1) ;    %OLTF
figure(2);
bode(G_1);
margin(G_1);
  
%Frequency Response of Second Order System
s=tf('s');
T_2=(12/(s^2+7*s+12));     %CLTF
[mr2,wr2] = getPeakGain(T_2)
wb2 = bandwidth(T_2)
G_2 = T_2 / (1 - T_2) ;    %OLTF
figure(3);
bode(G_2) ;
margin(G_2);
