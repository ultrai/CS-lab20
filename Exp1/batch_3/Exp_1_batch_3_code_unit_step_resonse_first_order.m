
%%step response of 1st order  system Pole at -1/31 
%%G(s) = 1/ (s+1/31)
a=[0 1];
b=[1 1/31]; 
sys=tf(a,b)
figure(1)
step(sys);
title('step Response of first order system 1/s+1/31')
%%step response of 1st order  system pole at -31
%%G(s) = 1/ (s+31)
a=[0 1];
b=[1 31]; 
sys=tf(a,b)
figure(2)
step(sys);
title('step Response of first order system 1/s+31')
%%step response of 1st order  system pole at -5*31
%%G(s) = 1/ (s+31)
a=[0,1];
b=[1 5*31]; 
sys=tf(a,b)
figure(3)
step(sys);
title('step Response of first order system 1/s+5*31')
