%% second order undamped system
wn=3;
e=0;
d1=[wn*wn];
f1=[1 2*e*wn wn*wn];
g1=tf(d1,f1)
figure(10)
step(g1)
title('second order undamped system')

%% second order underdamped system
wn=3;
e=1/3;
d1=[wn*wn];
f1=[1 2*e*wn wn*wn];
g1=tf(d1,f1)
figure(11)
step(g1)
title('second order underdamped system')

%% second order critically damped system
wn=3;
e=1;
d2=[wn*wn];
f2=[1 2*e*wn wn*wn];
g2=tf(d2,f2)
figure(12)
step(g2)
title('second order critically damped system')

%% second order overdamped system
wn=3;
e=3;
d3=[wn*wn];
f3=[1 2*e*wn wn*wn];
g3=tf(d3,f3)
figure(13)
step(g3);
title('second order overdamped system')
