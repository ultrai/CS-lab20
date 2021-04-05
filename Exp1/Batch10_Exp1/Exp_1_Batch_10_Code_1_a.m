%Step Response of a First Order Unity Feedback System
a=44;
s=tf('s');
G=(1)/(s+a);
t=feedback(G,1)
figure(1)
step(t)
stepinfo(G)
title("Step Response of a First Order Unity Feedback System")

%Impulse Response of a First Order Unity Feedback System
a=44;
s=tf('s');
G=(1)/(s+a);
t=feedback(G,1)
figure(2)
impulse(t)
stepinfo(t)
title("Impulse Response of a First Order Unity Feedback System")