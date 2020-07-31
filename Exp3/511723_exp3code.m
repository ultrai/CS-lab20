%%Frequency Response of Second Order
System
s=tf('s');
G=(9/(s^2+3*s+9));
figure(1);
bode(G),grid 