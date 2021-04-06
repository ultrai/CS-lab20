%%for g1=g2=g3=g4=1/s and h1=h2=h3=1
ng1=[1];dg1=[1 0];g1=tf(ng1,dg1);
ng2=[1];dg2=[1 0];g2=tf(ng2,dg2);
ng3=[1];dg3=[1 0];g3=tf(ng3,dg3);
ng4=[1];dg4=[1 0];g4=tf(ng4,dg4);
nh1=[1];dh1=[1];h1=tf(nh1,dh1);
nh2=[1];dh2=[1];h2=tf(nh2,dh2);
nh3=[1];dh3=[1];h3=tf(nh3,dh3);
sys1=series(g3,g4)
sys2=feedback(sys1,h1,1)
sys3=series(sys2,g2)
sys4=feedback(sys3,h2,-1)
sys5=series(sys4,g4)
sys=feedback(sys5,h3,-1)

%%for g1=g2=g3=g4=s and h1=h2=h3=1
ng1=[1 0];dg1=[1];g1=tf(ng1,dg1);
ng2=[1 0];dg2=[1];g2=tf(ng2,dg2);
ng3=[1 0];dg3=[1];g3=tf(ng3,dg3);
ng4=[1 0];dg4=[1];g4=tf(ng4,dg4);
nh1=[1];dh1=[1];h1=tf(nh1,dh1);
nh2=[1];dh2=[1];h2=tf(nh2,dh2);
nh3=[1];dh3=[1];h3=tf(nh3,dh3);
sys1=series(g3,g4)
sys2=feedback(sys1,h1,1)
sys3=series(sys2,g2)
sys4=feedback(sys3,h2,-1)
sys5=series(sys4,g4)
sys=feedback(sys5,h3,-1)