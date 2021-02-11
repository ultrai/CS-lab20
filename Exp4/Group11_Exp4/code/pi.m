cont = pid(kp,0,ki)
g3 = g*cont
t3= feedback(g3,1)
figure(4)
step(t3,4);