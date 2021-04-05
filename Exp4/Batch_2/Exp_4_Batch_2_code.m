clc;
clear;
close all;
s=tf('s');
G=1/(s^2+10*s+20);
figure(1)
step(G)
title('without any controller');

% p-controller
kp=300;
C=pid(kp,0,0);
plant=C*G;
a=feedback(plant,1);
b = 0:0.01:2;
figure(2)
step(a,b)
title('step response with p controller');

% pd-controller
kd=10;
kp=300;
C=pid(kp,0,kd);
plant=C*G;
a1=feedback(plant,1);
b1=0:0.01:2;
figure(3);
step(a1,b1)
title('step response with pd controller');



% pi-controller
kp=300;
ki=70;
C=pid(kp,ki,0);
plant=C*G;
a2=feedback(plant,1);
b2=0:0.01:2;
figure(4);
step(a2,b2)
title('step response with pi controller');

% pid-controller
kp=350;
ki=300;
kd=50;
C=pid(kp,ki,kd);
plant=C*G;
a3=feedback(plant,1);
b3=0:0.01:2;
figure(5)
step(a3,b3)
title('step response with pid controller');

%d
kd=10;
C=pid(0,0,kd);
plant=C*G;
a4=feedback(plant,1);
b4=0:0.01:2;
figure(6)
step(a4,b4)
title('step response with d controller');

%i
ki=70;
C=pid(0,ki,0);
plant=C*G;
a5=feedback(plant,1);
b5=0:0.01:2;
figure(7)
step(a5,b5)
title('step response with i controller');


%% comparision graph
figure(8)
step(a,b);
hold on;
step(a1,b1);
hold on;
step(a2,b2);
hold on;
step(a3,b3);
hold on;
step(a4,b4);
hold on;
step(a5,b5);
hold on;






