clc;
%first order system
n=[4];
d=[1 2];
sys=tf(n,d);
figure(1)
 step(sys);
 title('First order system Step Response');
figure(2)
 impulse(sys);
 title('First order system impulse response');

sys1=feedback(sys,1,-1); 
 figure(3)
  step(sys1);
  title('First order closed loop step response');
 figure(4)
  impulse(sys1);
  title('First order closed loop impulse response');
  
  %second order system
n=[4];
d=[1 6 16];
sys=tf(n,d);
figure(5)
 step(sys);
 title('Second order system Step Response');
figure(6)
 impulse(sys);
 title('Second order system impulse response');

sys1=feedback(sys,1,-1); 
 figure(7)
  step(sys1);
  title('Second order closed loop step response');
 figure(8)
  impulse(sys1);
  title('Second order closed loop impulse response');