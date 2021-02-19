num = 1;
sys1 = [1 3 2];
sys2 = [1 1 -2];
sys3 = [0 10 0];

plant1 = tf(num,sys1);
plant2 = tf(num,sys2);
plant3 = tf(num,sys3);

figure(1);
step(plant1);
title('1/(s+1)(s+2) Open Loop Response');
grid;

figure(2);
step(plant2);
title('1/(s-1)(s+2) Open Loop Response');
grid;

figure(3);
step(plant3);
title('1/10s Open Loop Response');
grid;