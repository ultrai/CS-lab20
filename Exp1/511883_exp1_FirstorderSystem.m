% step response of first order system  %
A = input('Enter value of A')
T =input('Enter value of time constant')
num=[A];
den=[T 1] ;
sys=tf(num,den);
t=[0: 0.001: 8];
step(sys,t)
