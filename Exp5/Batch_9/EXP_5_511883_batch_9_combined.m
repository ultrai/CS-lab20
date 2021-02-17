%Batch_9 Simulation Results
clc;
clear;
close all;
s=tf('s');
G1=1/(10*s)
G2=1/((s-1)*(s+2))
G3=1/((s+1)*(s+2))

step(G1)
title("Step Response of G(s)=1/(10*s)")
% hgexport(1,"511883_Results_Step_Response_G1.fig");
hold on
figure(2)
step(G2)
title("Step Response of G(s)=1/((s-1)*(s+2))")
% hgexport(2,"511883_Results_Step_Response_of_G2.fig");
figure(3)
step(G3)
title("Step Response of G(s)=1/((s+1)*(s+2))")
% hgexport(3,"511883_Results_Step_Response_G3.fig");

G4=feedback(G1,1);
G5=feedback(G2,1);
G6=feedback(G3,1);
figure(4)
step(G4)
title("Step Response of G(s)=1/(10*s) with unity negative Feedback")
% hgexport(4,"511883_Results_Step_Response_of_G4.fig");
figure(5)
step(G5)
title("Step Response of G(s)=1/((s-1)*(s+2)) with unity negative Feedback")
% hgexport(5,"511883_Results_Step_Response_of_G5.fig");
figure(6)
step(G6)
title("Step Response of G(s)=1/((s+1)*(s+2)) with unity negative Feedback")
% hgexport(6,"511883_Results_Step_Response_of_G6.fig");

G7=feedback(G1,-1);
G8=feedback(G2,-1);
G9=feedback(G3,-1);
figure(7)
step(G7)
title("Step Response of G(s)=1/(10*s) with unity positive Feedback")
% hgexport(7,"511883_Results_Step_Response_of_G7.fig");
figure(8)
step(G8)
title("Step Response of G(s)=1/((s-1)*(s+2)) with unity positive Feedback")
% hgexport(8,"511883_Results_Step_Response_of_G8.fig");
figure(9)
step(G9)
title("Step Response of G(s)=1/((s+1)*(s+2)) with unity positive Feedback")
% hgexport(9,"511883_Results_Step_Response_of_G9.fig");

G10=feedback(G1,1/(s+1))
G11=feedback(G2,1/(s+1))
G12=feedback(G3,1/(s+1))
figure(10)
step(G10)
title("Step Response of G(s)=1/(10*s) with h(s)=1/(s+1) negative Feedback")
% hgexport(10,"511883_Results_Step_Response_of_G10.fig");
figure(11)
step(G11)
title("Step Response of G(s)=1/((s-1)*(s+2)) with h(s)=1/(s+1) negative Feedback")
% hgexport(11,"511883_Results_Step_Response_of_G11.fig");
figure(12)
step(G12)
title("Step Response of G(s)=1/((s+1)*(s+2)) with h(s)=1/(s+1) negative Feedback")
% hgexport(12,"511883_Results_Step_Response_of_G12.fig");


G13=feedback(G1,(s+1))
G14=feedback(G2,(s+1))
G15=feedback(G3,(s+1))
figure(13)
step(G13)
title("Step Response of G(s)=1/(10*s) with h(s)=(s+1) negative Feedback")
% hgexport(13,"511883_Results_Step_Response_of_G13.fig");
figure(14)
step(G14)
title("Step Response of G(s)=1/((s-1)*(s+2)) with h(s)=(s+1) negative Feedback")
% hgexport(14,"511883_Results_Step_Response_of_G14.fig");
figure(15)
step(G15)
title("Step Response of G(s)=1/((s+1)*(s+2)) with h(s)=(s+1) negative Feedback")
% hgexport(15,"511883_Results_Step_Response_of_G15.fig");

figure(16)
pzmap(G1)
hold on
pzmap(G2)
hold on
pzmap(G3)
hold on
pzmap(G4)
hold on
pzmap(G5)
hold on
pzmap(G6)
hold on
pzmap(G7)
hold on
pzmap(G8)
hold on
pzmap(G9)
hold on
pzmap(G10)
hold on
pzmap(G11)
hold on
pzmap(G12)
hold on
pzmap(G13)
hold on
pzmap(G14)
hold on
pzmap(G15)
legend();
title("PZMAP");
% hgexport(16,"511883_Results_PZMAP.fig");


