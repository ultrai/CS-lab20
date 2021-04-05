num = 2;
den1 = [1 -1]
den2 = [1 2]
den = conv (den1,den2)
H = tf (num,den)
P = ss(H)
[a,b,c,d] = dssdata(P)