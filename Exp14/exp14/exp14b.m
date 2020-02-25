p=[0 0 0 0 10]
q=[1 8 36 80 0]
sys=tf(p,q);
zpk(sys)
rlocus(sys)
