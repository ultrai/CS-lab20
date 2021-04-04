num = input ('Enter numerator polynomial values in the form of matrix array');
den1 = input ('Enter denominator 1 values');
den2 = input ('Enter denominator 2 values');
den = conv (den1,den2);
H = tf (num,den);
P = ss(H);
[a,b,c,d] = ssdata(P);