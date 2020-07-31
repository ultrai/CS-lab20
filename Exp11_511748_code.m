%% Time response of LTI Systems 
R=1;
L=0.5;
C=0.5;
G=tf([0 1],[1 R/L 1/(L*C)])
step(G)
figure(1)