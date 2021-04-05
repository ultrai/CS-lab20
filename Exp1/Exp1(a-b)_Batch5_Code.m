%%pole at -38
z=[0 1];
p=[1 38];
sys=tf(z,p)
t=feedback(sys,1)
figure(1);
step(t);
title('Step response of first order system');
%%addtion of zero at -1/38
z=[1 (1/38)];
p=[1 38];
sys1=tf(z,p)
figure(2);
step(sys1)
title('Effect of addition of Zero at -1/38 on Step response of first order system');
%%addtion of zero at -38
z=[1 38];
p=[1 38];
sys3=tf(z,p)
figure(2);
step(sys3)
title('Effect of addition of Zero at -38 on Step response of first order system');