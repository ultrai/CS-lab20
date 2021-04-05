clear all;
clc;
w={10^(-3), 10^(3)};
T1= tf([37.3 68.65 25],[0.0744 1.69745 11.1938 16.693 1 0]);
bode(T1,w)
grid on
figure(1);
T2 = tf([3.85 10],[0.162 1.162 1 0]);
bode(T2,w)
grid on
figure(2);
T3 = tf([40 8],[8 48.2 41.2 1 0]);
bode(T3)
grid on
figure(3);
T4 = tf([10],[1 1 0]);
bode(T4)
grid on
figure(4);
T5 = tf([8],[1 6 5 0]);
bode(T5)
grid on
figure(5);
T6 = tf([25],[0.05 0.6 1 0]);
bode(T6)
grid on
figure(6);