%mathematical modelling
num = [1 4 3]
den= conv([1 5], [3 4 7])
g = tf (num,den)
[z,p,k] = tf2zp(num,den)
pzmap(g)
%time response of second oRder system
num = [1];
den = [1 1 4]
g = tf (num,den)
t = feedback(g,1)
step(t,'r')