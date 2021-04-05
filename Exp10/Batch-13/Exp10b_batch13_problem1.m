a = [-1 2; 1 0]; 
b = [1;0];
c = [0 1];
d = [0];
[num, den] = ss2tf(a, b, c, d,1);
TF=tf(num , den)
