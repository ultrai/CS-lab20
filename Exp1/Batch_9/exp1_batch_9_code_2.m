p=[0 1];
q=[1 81];
sys=tf(p,q)
t=feedback(sys,1)
step(t);