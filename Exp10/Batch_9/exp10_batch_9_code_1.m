%Batch 10 Experiment 10
s=tf('s');
g1=1/s;
g2=1/s;
g3=1/s;
g4=1/s;
h1=1;
h2=1;
h3=1;
%Single line code for whole system
system=feedback(series(g1,feedback(series(g2,feedback(series(g3,g4),h1,1)),h2,-1)),h3)