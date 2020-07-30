% PID controller
G = tf([1], [1 10 20])

% Open loop Step Response
figure(1)
step(G)
grid

% P controller
Kp = 300
C = pid(Kp)
T = feedback(C*G, 1)
figure(2)
step(T)
grid

% PD controller
Kp = 300
Kd = 10
C = pid(Kp, 0, Kd)
T = feedback(C*G, 1)
figure(3)
step(T)
grid

% PI controller
Kp = 30
Ki = 70
C = pid(Kp, Ki)
T = feedback(C*G, 1)
figure(4)
step(T)
grid

% PID controller
Kp = 350
Ki = 300
Kd = 50
C = pid(Kp, Ki, Kd)
T = feedback(C*G, 1)
figure(5)
step(T)