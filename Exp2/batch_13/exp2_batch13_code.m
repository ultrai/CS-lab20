%%frequency response of 2nd order system
w=input('enter natural frequency');
z=input('enter damping ratio');
a=[w*w];
b=[1 2*z*w w*w];
g=tf(a,b);
figure(1);
bode(g);
margin(g);