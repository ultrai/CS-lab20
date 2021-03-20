num = 1;
sys1 = [1 3 2];
sys2 = [1 1 -2];
sys3 = [0 10 0];

plant1 = tf(num,sys1);
plant2 = tf(num,sys2);
plant3 = tf(num,sys3);


z = [];
p = [];
kp = 1;
fbp = zpk(z,p,kp);

tf1 = feedback(plant1,fbp);
tf2 = feedback(plant2,fbp);
tf3 = feedback(plant3,fbp);

figure(1);
step(tf1);
title('1/(s+1)(s+2) Unity Positive Feedback');
grid;

figure(2);
step(tf2);
title('1/(s-1)(s+2) Unity Positive Feedback');
grid;

figure(3);
step(tf3);
title('1/10s Unity Positive Feedback');
grid;

kn = -1;
fbn = zpk(z,p,kn);

tf1 = feedback(plant1,fbn);
tf2 = feedback(plant2,fbn);
tf3 = feedback(plant3,fbn);

figure(4);
step(tf1);
title('1/(s+1)(s+2) Unity Negative Feedback');
grid;

figure(5);
step(tf2);
title('1/(s-1)(s+2) Unity Negative Feedback');
grid;

figure(6);
step(tf3);
title('1/10s Unity Negative Feedback');
grid;