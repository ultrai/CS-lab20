%Batch_9 Simulation Results
clc;
clear;
close all;
s=tf('s');
G=1/(s^2+(10*s)+20);
G1=feedback(G,1);
[a,b]=step(G1);
A=plot(b,a);
hold on;
[a,b]=step(G);
B=plot(b,a);
legend([A,B],["Closed loop","Open loop"]);
%legend(B,"Open loop");
title("Open loop and closed loop Step Response");
t=0:0.01:2;
%kp=300_P controller
kp=300;
G2=feedback(kp*G,1);
figure(2)
step(G2,t);
title("K_p=300 P controller");

%PD
kd=10;
contr=tf([kd kp],1);
G3=feedback(contr*G,1);
figure(3)
step(G3,t);
title("PD Controller Step K_d=10 K_p=300");

%PI
kp=30;
ki=70;
contr=tf([kp ki],[1 0]);
G4=feedback(contr*G,1);
figure(4)
step(G4,t);
title("PI Controller Step K_i=70 K_p=30");

%PID
kp=350;
ki=300;
kd=50;
contr=tf([kd kp ki],[1 0]);
G5=feedback(contr*G,1);
figure(5)
step(G5,t);
title("PID Controller Step K_i=300 K_p=350 K_d=50");

%Comparison
figure(6)
step(G5,t);
hold on;
step(G4,t);
hold on;
step(G3,t);
hold on;
step(G2,t);
hold on;
step(G1,t);
legend("PID_Effect","PI_Effect","PD_Effect","P_Effect")
title("Comparison Graph");
%Exporting FIG
hgexport(1,"Open_loop_and_closed_loop_Step_Response.fig");
hgexport(2,"511883_P_controller_result.fig");
hgexport(3,"511883_PD_controller_result.fig");
hgexport(4,"511883_PI_controller_result.fig");
hgexport(5,"511883_PID_controller_result.fig");
hgexport(6,"511883_Comparison_result.fig");

