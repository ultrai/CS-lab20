%%time response of second order system
%%sys=w*w/(1+2*e*w+w*w)
w = 30
e = 0
p = [0 0 w*w]
q = [1 2*e*w w*w]
sys = tf(p,q)
figure(1)
step(sys)
title('step response of un damped second order system w*w/(1+2*e*w+w*w),e=0,w=30')
%%sys=w*w/(1+2*e*w+w*w)
w = 30
e = 0.5
p = [0 0 w*w]
q = [1 2*e*w w*w]
sys = tf(p,q)
figure(2)
step(sys)
title('step response of under damped second order system w*w/(1+2*e*w+w*w),e=0.5,w=30')
%%sys=w*w/(1+2*e*w+w*w)
w = 30
e = 1
p = [0 0 w*w]
q = [1 2*e*w w*w]
sys = tf(p,q)
figure(3)
step(sys)
title('step response of critically damped second order system w*w/(1+2*e*w+w*w),e=1,w=30')
%%sys=w*w/(1+2*e*w+w*w)
w = 30
e = 1.5
p = [0 0 w*w]
q = [1 2*e*w w*w]
sys = tf(p,q)
figure(4)
step(sys)
title('step response of over damped second order system w*w/(1+2*e*w+w*w),e=1.5,w=30')
