p=[1 405];
q=[0 1];
sys=tf(p,q)
t=feedback(sys,1)
step(t);