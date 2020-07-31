%%Time Domain Analysis of LTI system
R=1;
L=0.5;
C=0.5;
system=tf([1/(L*C)],[1 R/L 1/(L*C)]);
figure(1)
step(system)