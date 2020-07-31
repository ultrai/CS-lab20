%%Step Response of second order system for steady state error
steadysystem=tf([1],[1 2 4]);
figure(1)
step(steadysystem)