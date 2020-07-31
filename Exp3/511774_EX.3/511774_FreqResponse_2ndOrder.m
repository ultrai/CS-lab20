%%frequency_Resp of second order system
s=tf('s')
r1= (356/(s^2 + 22*s + 356));
figure(1)
bode(r1)