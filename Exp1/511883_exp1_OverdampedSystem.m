% overdamped system %
num1 = [2];
den1= [1 4 2];
sys1 =tf(num1,den1)
step(sys1,0:0.1:8);
geta1=0;
title('step response of overdamped system');
stepinfo(sys1)