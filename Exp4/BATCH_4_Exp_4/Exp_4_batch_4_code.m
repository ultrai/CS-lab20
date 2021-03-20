% effects of p pi pid controllers %
sys=tf([1],[1 10 20])
g=feedback(sys,1)
stepinfo(g)
figure(1)
step(g)
kp1=300
kp2=100
ki1=5
ki2=15
kd1=30
kd2=80
%% introduction of p controllers %%
cont=pid(kp1)
g1=g*cont
t1=feedback(g1,1)
stepinfo(t1)
figure(2)
step(t1,1)
title('step response for p controller for kp=300') 

cont=pid(kp2)
g2=g*cont
t2=feedback(g2,1)
stepinfo(t2)
figure(3)
step(t2,1)
title('step response for p controller for kp=100')


%% introduction of pi controllers %%
cont=pid(kp1,ki1)
g3=g*cont
t3=feedback(g3,1)
stepinfo(t3)
figure(4)
step(t3,1)
title('step response for pi controller for kp=300,ki=5') 

cont=pid(kp2,ki2)
g4=g*cont
t4=feedback(g4,1)
stepinfo(t4)
figure(5)
step(t4,1)
title('step response for pi controller for kp=100,ki=15')


%% introduction of pd controllers %%
cont=pid(kp1,kd1)
g5=g*cont
t5=feedback(g5,1)
stepinfo(t4)
figure(6)
step(t5,1)
title('step response for pd controller for kp=300,kd=30') 

cont=pid(kp2,kd2)
g6=g*cont
t6=feedback(g6,1)
stepinfo(t6)
figure(7)
step(t6,1)
title('step response for pd controller for kp=100,kd=80')


%% introduction of pid controllers %%
cont=pid(kp1,ki1,kd1)
g7=g*cont
t7=feedback(g7,1)
stepinfo(t7)
figure(8)
step(t7,1)
title('step response for pid controller for kp=300,ki=5,kd=30') 

cont=pid(kp2,ki1,kd1)
g8=g*cont
t8=feedback(g8,1)
stepinfo(t8)
figure(9)
step(t8,1)
title('step response for pid controller for kp=100,ki=5,kd=30')

cont=pid(kp1,ki2,kd1)
g9=g*cont
t9=feedback(g9,1)
stepinfo(t9)
figure(10)
step(t9,1)
title('step response for pid controller for kp=300,ki=15,kd=30') 

cont=pid(kp1,ki1,kd2)
g10=g*cont
t10=feedback(g10,1)
stepinfo(t10)
figure(11)
step(t10,1)
title('step response for pid controller for kp=100,ki=5,kd=80')

cont=pid(kp2,ki2,kd2)
g11=g*cont
t11=feedback(g11,1)
stepinfo(t11)
figure(12)
step(t11,1)
title('step response for pid controller for kp=300,ki=15,kd=80')

cont=pid(417.316,5016.177,8.68)
g12=g*cont
t12=feedback(g12,1)
stepinfo(t12)
figure(13)
step(t12,1)
title('step response for pid controller for with optimal values')