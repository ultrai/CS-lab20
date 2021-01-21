Z=[];
P=[-22+22i -22-22i];
K=1000;
sys=zpk(Z,P,K)
t=[0:0.001:1];
step(sys,t);
grid
