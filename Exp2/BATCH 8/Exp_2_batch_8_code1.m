% Frequency Response of Second Order System
s=tf('s');
R1= (100/(s^2+10*s+100));
figure(1);
bode(R1)