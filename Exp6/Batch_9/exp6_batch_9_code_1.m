% Batch_9 Simulation Results

% We have found All three plots for each given transfer function on
% Experimental purpose

clc;
clear;
close all;
s=tf('s');
G = 36/((s^2)+(6*s^2)+(11*s)+6);
%Bode Plot Q_3
bode(G);
title("Bode Plot of 36/(s^2+(6*s^2)+11*s+6)")
hgexport(1,"511883_Results_Bode_Plot_Q_3.fig");
figure(2)
nyquist(G);
figure(3)
%Root Locus Q_1
rlocus(G);
title("Root Locus of 36/(s^2+(6*s^2)+11*s+6)")
hgexport(3,"511883_Results_Root_Locus_Q_1.fig");

%Adding Pole at +1
G4 = 36/(((s^2)+(6*s^2)+(11*s)+6)*(s-1));
figure(8)
rlocus(G4)
title("Root Locus of 36/(((s^2)+(6*s^2)+(11*s)+6)*(s-1))")
hgexport(8,"511883_Results_Root_Locus_Q_1_b.fig");


%Adding Pole at -1
G5 = 36/(((s^2)+(6*s^2)+(11*s)+6)*(s+1));
figure(9)
rlocus(G5)
title("Root Locus of 36/(((s^2)+(6*s^2)+(11*s)+6)*(s+1))")
hgexport(9,"511883_Results_Root_Locus_Q_1_c.fig");


%Adding Zero at -1
G6 = (36*(s+1))/((s^2)+(6*s^2)+(11*s)+6);
figure(10)
rlocus(G6)
title("Root Locus of (36*(s+1))/((s^2)+(6*s^2)+(11*s)+6)")
hgexport(10,"511883_Results_Root_Locus_Q_1_d.fig");

%Adding Zero at +1
G7 = (36*(s-1))/((s^2)+(6*s^2)+(11*s)+6);
figure(11)
rlocus(G7)
title("Root Locus of (36*(s-1))/((s^2)+(6*s^2)+(11*s)+6)")
hgexport(11,"511883_Results_Root_Locus_Q_1_e.fig");


figure(4)
G1 = 1/(s*(s+1)*(s+2));
bode(G1);
figure(5)
%Nyquist Plot Q_2
nyquist(G1);
title("Nyquist Plot of 1/(s*(s+1)*(s+2))")
hgexport(5,"511883_Results_Nyquist_Plot_Q_2.fig");
figure(6)
rlocus(G1);
[Gm,Pm]=margin(G1);
fprintf("Gain Margin of 1/(s*(s+1)*(s+2)) is "+Gm+"\nPhase Margin of 1/(s*(s+1)*(s+2)) is "+Pm+"\n");

%Bode plot Q_3
G3=10/(s*(1+0.4*s)*(1+0.1*s));
figure(7)
bode(G3)
title("Bode Plot of 10/(s*(1+0.4*s)*(1+0.1*s))")
hgexport(7,"511883_Results_Bode_Plot_Q_3_b.fig");
