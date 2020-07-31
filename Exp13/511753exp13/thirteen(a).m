%%Open Loop Frequency Response and Stability
w=input('Enter the natural frequecncy');
e=input('Enter the damping ratio');
num=[w*w];
den=[1 2*e*w 0];
g=tf(num,den);
figure(1)
bode(g);
margin(g);
%%Open Loop Frequency and closed loop transient response
cltf=feedback(g,1);
figure(2)
step(cltf);
title('Step Response of CLTF');