
num = [2]
den = [1 1 -2]
H=tf(num,den)
disp("a,b,c,d matrices from given transfer function")
P=ss(H)
[a,b,c,d] = ssdata(P)
