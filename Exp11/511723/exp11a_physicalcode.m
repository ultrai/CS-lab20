%%Time Domain Analysis of a phsyical LTI system
R=1;
L=0.5;
C=0.5;
LTIsystem=tf([1/(L*C)],[1 R/L 1/(L*C)]);
figure(1)
step(LTIsystem)