clc;
clear;
%transfer function of G1 
ng=[0 1]; dgl=[1 0]; sysg=tf(ng,dgl)
%transfer function of G2
ng2=[0 1];dg2=[1 0];sysg2=tf(ng2,dg2)
%transfer function of G3
ng3=[0 1];dg3=[1 0];sysg3=tf(ng3,dg3)
%transfer function of G4
ng4=[0 1];dg4=[1 0];sysg4=tf(ng4,dg4)
%transfer function of H1
nh1=[1]; dh=[0 1]; sysh=tf(nh1,dh) 
%transfer function of H2
nh2=[1]; dh2=[0 1]; sysh2=tf(nh2,dh2)
%transfer function of H3
nh3=[1]; dh3=[0 1]; sysh3=tf(nh3,dh3)
%Series Combination of G3,G4
sysl=series(sysg3, sysg4)
%positive Feedback of H1 with G3*G4
sys2=feedback(sysl, sysh, +1)
%series Combination of G2*G3*G4
sys3=series(sysg2,sys2)
%Negative Feedback of H2 with G3*G4
sys4=feedback (sys3,sysh2,-1)
%series Combination of G1*G2*G3*G4
sys5=series(sysg,sys4);
%Negative Feedback of H1 with G1*G2*G3*G4
sys=feedback (sys5,[1])