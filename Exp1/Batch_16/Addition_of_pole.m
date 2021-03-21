Z=[];
P=[-0.045+0.045i -0.045-0.045i];
K=1000;
sys=zpk(Z,P,K)
t=[0:0.001:1];
step(sys,t);
grid
 
Z=[];
P1=[-22+22i -22-22i];
K=1000;
sys1=zpk(Z,P1,K)
t1=[0:0.001:1];
step(sys1,t1);
grid

Z=[];
P2=[-110+110i -110-110i];
K=1000;
sys2=zpk(Z,P2,K)
t2=[0:0.001:1];
step(sys2,t2);
grid
