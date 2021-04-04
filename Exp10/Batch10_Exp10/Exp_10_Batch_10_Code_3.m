num = input ("Enter numerator polynomial values");
den1 = input ("Enter Root 1 values");
den2 = input ("Enter Root 2 values");
s=tf('s')
H = num/((s-den1)*(s-den2))
P = ss(H)
[a,b,c,d] = ssdata(P)