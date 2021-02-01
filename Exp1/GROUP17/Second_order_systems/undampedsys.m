
% undamped system %
num1 = [9];
den1= [1 0 9];
sys1 =tf(num1,den1)
step(sys1,0:0.1:8);
geta1=0;
title('step response of undamped system');
stepinfo(sys1)
figure(2)
% underdamped system %
num = [9];
den = [1 2 9];
sys =tf(num,den)
step(sys, 0:0.1:8);
geta=den(2)/(2*sqrt(den(3)))
title('step response of underdamped system');
stepinfo(sys)
