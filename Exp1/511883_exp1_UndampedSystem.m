% undamped system %
num1 = [9];
den1= [1 0 9];
sys1 =tf(num1,den1)
step(sys1,0:0.1:8);
geta1=0;
title('step response of undamped system');
stepinfo(sys1)