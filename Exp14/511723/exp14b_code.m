%%Root locus of a system
p = [ 0 0 0 0 10 ];
q = [ 1 8 36 80 0 ];
sys = tf(p,q)
figure(1);
zpk(sys)
rlocus(sys)