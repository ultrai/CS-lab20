%%type zero
p=[1];
q=[1 1 5];
g=tf(p,q);
t=feedback(g,1);
figure(1)
step(t);
title('Step Response of type 0 system');
%%type one
p1=[1];
q1=[0 1 1 5];
g1=tf(p1,q1);
t1=feedback(g1,1);
figure(2)
step(t1);
title('Step Response of type 1 system');
%%type two
p2=[1];
q2=[0 0 1 1 5];
g2=tf(p2,q2);
t2=feedback(g2,1);
figure(3)
step(t2);
title('Step Response of type 2 system');