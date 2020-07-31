%%2nd order system
n=[4];
d=[1 5 15];
sys=tf(n,d);
figure(5)
step(sys);
figure(6)
impulse(sys);
sys1=feedback(sys,1,-1);
figure(7)
step(sys1)
figure(8)
impulse(sys1);