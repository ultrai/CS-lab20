p=[0 1];
q=[1 405];
sys=tf(p,q)
t=feedback(sys,1)
step(t);