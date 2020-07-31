%% tf G=K(s+2)/(s+1)(s+2)
num=[1 2];
den=[1 3 2];
Sys=tf(num,den);
figure(1)
zpk(Sys);
rlocus(Sys);
%%for different values of k
 for i = 1:3
    Ki=input('enter the value of k');
   Gi=feedback(Sys*Ki,-1);
   subplot(2,2,i)
   zpk(Gi);
   rlocus(Gi);
 end