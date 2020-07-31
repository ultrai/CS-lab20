%%Frequency Response of 2nd order system
w=input('Enter the natural frequecncy');
e=input('Enter the damping ratio');
num=[w*w];
den=[1 2*e*w w*w];
g=tf(num,den);
figure(1)
bode(g);
margin(g);
 