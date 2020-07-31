%frequency response of second order sys
%underdamped $=0.01
num=1;
den=[1 0.04 4];
T=tf(num,den);
figure(1);
bode(T)
%critically damped $=1
hold on
den1=[1 4 4];
T1=tf(num,den1);
bode(T1);
%overdaped $=1.5
hold on
den2=[1 6 4];
T2=tf(num,den2);
bode(T2)
%undamped $=0
den3=[1 0 4];
T3=tf(num,den3);
bode(T3)
