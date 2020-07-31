clc;
%type 0
num=[1];
den=[1 1 4];
g=tf(num,den);
t=feedback(g,1)
figure(1)
step(t);
title('Type 0 unityfeedback Step Response');
figure(2)
impulse(t);
title('Type 0 unityfeedback Impulse Response');

num1=[1];
den1=[1 0];
r=tf(num1,den1);

%type 1

g=g*r;
t=feedback(g,1)
figure(3)
step(t);
title('Type 1 closedloop Step Response');
figure(4)
impulse(t);
title('Type 1 Closedloop Impulse Response');

%type 3

g=g*r;
t=feedback(g,1)
figure(5)
step(t);
title('Type 2 ClosedLoop Step Response');
figure(6)
impulse(t);
title('Type 2 Closedloop Impulse Response');