cont = pid(kp)
g1 = g*cont
t1 = feedback(g1,1)
figure(2)
step(t1,4);