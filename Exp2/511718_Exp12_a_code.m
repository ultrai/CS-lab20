% for overdamped
D=2;
num= 16;
den=[1 2*D*7 49];
S=tf(num,den);
figure(1);
step(S)
% for underdamped
D=8/14;
num= 16;
den=[1 2*D*7 49];
S=tf(num,den);
step(S)
% for cruticallydamped
D=1;
num= 16;
den=[1 2*D*7 49];
S=tf(num,den);
figure(1);
step(S)
% for overdamped
D=2;
num= 16;
den=[1 2*D*7 49];
S=tf(num,den);
step(S)
% for undamped
D=0;
num= 16;
den=[1 2*D*7 49];
S=tf(num,den);
step(S)








