%% step response of a unit feedback system
%% G(s)=1/(s+26)
a=[0 1];
b=[1 26];
c=tf(a,b)
d=feedback(c,1)
figure(1)
step(d);

%% impulse response of a unit feedback system
%% G(s)=1/(s+26)
a1=[0 1];
b1=[1 26];
c1= tf(a1,b1)
d1=feedback(c1,1)
figure(2);
impulse(d1);


%% step response of first order unity feedback system
%% pole at -R
a2=1;
r=26;
b2=[1 r];
c2=tf(a2,b2)
figure(3)
step(c2);
title('step response of pole at -R')

%% step response of dfirst order unity feedbacksystem
%% pole at -5R
a3=1;
r=26;
b3=[1 5*r];
c3=tf(a3,b3)
figure(4)
step(c3);
title('step response of pole at -5R')

%% step response of first order unity feedback system
%% placing pole at - 1/R
a4=1;
R=26;
b4=[1,1/R];
c4=tf(a4,b4)
figure(5)
step(c4);
title('step response of pole at -1/R')

 %% step response for first order unity feedback system 
%% placing zero at -5R
r=26;
a5=[1 5*r];
b5=[1 1];
c5=tf(a5,b5)
figure(6)
step(c5);
title('step response of zero at -5R')

%% step response of first order unity feedback system
%% placing zero to a transfer function at -R
r=26;
a6=[1 r]
b6=[1 1];
c6=tf(a6,b6)
figure(7)
step(c6);
title('step response of zero at -R')

%% step response of first order unity feedback system
%% placing zeros for transfer function 1/(1+s) at - inverse R
r=26;
a7=[1 1/r];
b7=[1 1];
c7=tf(a7,b7)
figure(8)
step(c7)
title('step response of zero at -1/R')

%% placing zero at 1/R and -5R
r=26;
a8=[1 129.9615 -5];
b8=[1 2 1];
c8=tf(a8,b8)
figure(9)
step(c8)
title('step response of zero at 1/R and 5R')
