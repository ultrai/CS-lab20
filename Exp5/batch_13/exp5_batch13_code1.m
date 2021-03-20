num = 1;
sys1 = [0 10 0];

plant1 = tf(num,sys1);

figure
plot(step(plant1), 'DisplayName', 'Open Loop');
hold on

z = [];
p = [];
kp = 1;
fbp = zpk(z,p,kp);

tf1 = feedback(plant1,fbp);
plot(step(tf1), 'DisplayName', 'Unity Positive Feedback');

kn = -1;
fbn = zpk(z,p,kn);

tf1 = feedback(plant1,fbn);
plot(step(tf1), 'DisplayName', 'Unity Negative Feedback');

p = [-1];
fbp = zpk(z,p,kp);

tf1 = feedback(plant1,fbp);
plot(step(tf1), 'DisplayName', 'Unity Positive Feedback pole at -1');

fbn = zpk(z,p,kn);

tf1 = feedback(plant1,fbn);
plot(step(tf1), 'DisplayName', 'Unity Negative Feedback pole at -1');

p = [0];
z = [-1]
fbp = zpk(z,p,kp);

tf1 = feedback(plant1,fbp);
plot(step(tf1), 'DisplayName', 'Unity Positive Feedback zero at -1');

fbn = zpk(z,p,kn);

tf1 = feedback(plant1,fbn);
plot(step(tf1), 'DisplayName', 'Unity Negative Feedback zero at -1');

legend