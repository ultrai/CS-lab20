%Transfer function - 10s+10/S^2+5s+6
num=[10 10];
den=[1 5 6];
Sa=tf(num,den);
figure(1);
step(Sa)
%Transfer function - 10s+10/S^3+6s^2+11s+6
num=[10 10];
den=[1 6 11 6];
Sa=tf(num,den);
figure(1);
step(Sa)
%Transfer function - 10/S^2+5s+6
num=10;
den=[1 5 6];
Sa=tf(num,den);
figure(1);
step(Sa)