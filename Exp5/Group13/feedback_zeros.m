num = 1;
sys1 = [1 3 2];
sys2 = [1 1 -2];
sys3 = [0 10 0];

plant1 = tf(num,sys1);
plant2 = tf(num,sys2);
plant3 = tf(num,sys3);


z = [-1];
p = [];
kp = 1;
fbp = zpk(z,p,kp);

tf1 = feedback(plant1,fbp, 1);
tf2 = feedback(plant2,fbp, 1);
tf3 = feedback(plant3,fbp, 1);

figure(1);
step(tf1);
title('1/(s+1)(s+2) Positive Feedback zero at -1');
grid;

figure(2);
step(tf2);
title('1/(s-1)(s+2) Positive Feedback zero at -1');
grid;

figure(3);
step(tf3);
title('1/10s Positive Feedback zero at -1');
grid;

kn = -1;
fbn = zpk(z,p,kn);

tf11 = feedback(plant1,fbn, 1);
tf21 = feedback(plant2,fbn, 1);
tf31 = feedback(plant3,fbn, 1);

figure(4);
step(tf11);
title('1/(s+1)(s+2) Negative Feedback zero at -1');
grid;

figure(5);
step(tf21);
title('1/(s-1)(s+2) Negative Feedback zero at -1');
grid;

figure(6);
step(tf31);
title('1/10s Negative Feedback zero at -1');
grid;
