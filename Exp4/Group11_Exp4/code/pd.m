cont = pid(kp,kd)
g2 = g*cont
t2 = feedback(g2,1)
figure(3)
step(t2,4);