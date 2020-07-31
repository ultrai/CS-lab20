clc
ng1=[1];dg1=[1 20];
sysg1=tf(ng1,dg1);
ng2=[1];dg2=[1 2];
sysg2=tf(ng2,dg2);
ng3=[1 0 1];dg3=[1 3 4];
sysg3=tf(ng3,dg3);
ng4=[1 1];dg4=[1 5];
sysg4=tf(ng4,dg4);
nh1=[1 1];dh1=[1 3];
sysh1=tf(nh1,dh1);
nh2=[3];dh2=[1];
sysh2=tf(nh2,dh2);
nh3=[1];dh3=[2];
sysh3=tf(nh3,dh3);
%Block Redudction Technique
sys1=sysh2/sysg4;
sys2=series(sysg3,sysg4);
sys3=feedback(sys2,sysh1);
sys4=series(sysg2,sys3);
sys5=feedback(sys4,sys1,-1);
sys6=series(sysg1,sys5);
sys=feedback(sys6,sysh3,-1)



