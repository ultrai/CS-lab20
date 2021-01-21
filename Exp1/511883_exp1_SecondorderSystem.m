%time response of second order system %
Wn   =  input('Enter natural frequency')
geta =  input('Enter damping ratio')
num  =  [Wn^2];
den  =  [ 1 2*geta*Wn Wn^2];
sys  =   tf(num,den)
step(sys, 0:0.1:8)
title('step response of second order system')
delaytime=(1+0.7*geta)/Wn
stepinfo(sys)