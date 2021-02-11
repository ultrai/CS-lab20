num=[1];
den=[1 10 20];
g= tf(num, den);
t=feedback(g,1)
figure(1)
step(t,4);
kp=300;
kd=10;
ki=70;