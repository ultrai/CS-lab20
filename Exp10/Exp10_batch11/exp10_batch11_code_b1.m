a = [0 2 ;1 -1];
b =[0 ;1];
c = [1 0];
d = 0;
[num, den] = ss2tf (a, b, c, d,1)
Transferfunction=tf(num , den)
