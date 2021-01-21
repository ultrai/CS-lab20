Z=[];
P=[-110+110i -110-110i];
K=1000;
sys=zpk(Z,P,K)
t=[0:0.001:1];
step(sys,t);
grid