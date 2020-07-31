%effect of loop gain on -ve feedback sys
k=1;
num=k;
den=[1 5 6];
Sy=tf(num,den);
Sys=feedback(Sy,-1);
figure(1);
step(Sys)
hold on
k=5;
num=k;
den=[1 5 6];Sy1=tf(num,den);Sys1=feedback(Sy1,-1);step(Sys1)
hold on
k=0.2;
num=k;
den=[1 5 6];Sy2=tf(num,den);Sys2=feedback(Sy2,-1);step(Sys2)