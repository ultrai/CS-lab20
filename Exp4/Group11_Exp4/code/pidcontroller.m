cont = pid(kp,kd,ki)
g4 = g*cont
t4 = feedback(g4,1)
figure(5)
step(t4,4);