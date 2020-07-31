%%1st order system
n=[5];
d=[1 3];
sys=tf(n,d);
figure(1)
step(sys);
figure(2)
impulse(sys);
sys1=feedback(sys,1,-1)
figure(3)
step(sys1);
figure(4)
impulse(sys1);
