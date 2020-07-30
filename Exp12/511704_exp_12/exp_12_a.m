% step response of a second order system
w = 3
k = .5

num = [w*w];
den = [1 2*k*w w*w];
sys = tf (num, den)

grid

w = 5
k = 1
num = [w*w];
den = [1 2*k*w w*w];
sys1 = tf (num, den)



w = 5
k = 0.4
num = [w*w];
den = [1 2*k*w w*w];
sys2 = tf (num, den)



w = 5
k = 0
num = [w*w];
den = [1 2*k*w w*w];
sys3 = tf (num, den)
step(sys)