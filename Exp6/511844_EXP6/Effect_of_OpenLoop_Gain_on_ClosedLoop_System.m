%Effect of Openloop Gain On Transient Response of Closedloop System
%%For transfer function gh=36/(s^3+6*s^2+11*s+6)
clc;
clear;
s=tf('s');
p=[1];
q=[1 6 11 6];
k=36;
sys=k*tf(p,q)
figure(1)
rlocus(sys)
grid on;
title('root locus plot of tf =36/(s^3+6*s^2+11*s+6)');

%For Openloop Gain of k=1.5
k=1.5;
Feedback_sys1=feedback(sys*k,-1);
figure(2)
rlocus(Feedback_sys1)
grid on;
title('root locus plot for an Openloop Gain of k=1.5 ');

%For Openloop Gain of k=2
k=2;
Feedback_sys2=feedback(sys*k,-1);
figure(3)
rlocus(Feedback_sys2)
grid on;
title('root locus plot for an Openloop Gain of k=2 ');

%For Openloop Gain of k=2.5
k=2.5
Feedback_sys3=feedback(sys*k,-1);
figure(4)
rlocus(Feedback_sys3)
grid on;
title('root locus plot for an Openloop Gain of k=2.5 ');

%For Openloop Gain of k=100
k=100
Feedback_sys4=feedback(sys*k,-1);
figure(5)
rlocus(Feedback_sys4)
grid on;
title('root locus plot for an Openloop Gain of k=100 ');

    