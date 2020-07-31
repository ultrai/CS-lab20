%p controller
s = tf('s');
P = 1/(s^2 + 10*s + 20);
step(P)
Kp = 300;
C = pid(Kp)
T = feedback(C*P,1)
t = 0:0.01:2;
step(T,t)
title('Response using P controller')
%pd controller
Kp = 300;
Kd = 10;
C = pid(Kp,0,Kd)
T = feedback(C*P,1)
t = 0:0.01:2;
step(T,t)
title('Response using PD controller')
%pi controller
Kp = 30;
Ki = 70;
C = pid(Kp,Ki)
T = feedback(C*P,1)
t = 0:0.01:2;
step(T,t)
title('Response using PI controller')
%pid controller
Kp = 350;
Ki = 300;
Kd = 50;
C = pid(Kp,Ki,Kd)
T = feedback(C*P,1);
t = 0:0.01:2;
step(T,t)
title('Response using PID controller')
