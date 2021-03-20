%%impulse response of 1st order  system Pole at -1/31 
%%G(s) = 1/ (s+1/31)
a=[0 1];
b=[1 1/31]; 
sys=tf(a,b)
figure(1)
impulse(sys);
title('impulse Response of first order system 1/s+1/31')
%%impulse  response of 1st order  system pole at -31
%%G(s) = 1/ (s+31)
a=[0 1];
b=[1 31]; 
sys=tf(a,b)
figure(2)
impulse(sys);
title('impulse Response of first order system 1/s+31')
%%impulse  response of 1st order  system pole at -5*31
%%G(s) = 1/ (s+31)
a=[0,1];
b=[1 5*31]; 
sys=tf(a,b)
figure(3)
impulse(sys);
title('impulse Response of first order system 1/s+5*31')
