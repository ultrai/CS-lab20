%step response of a second order system

  w=input('Enter the natural frequency');
  e=input('Enter damping ratio');
    num=[w*w];
    den=[1 2*e*w w*w];
  
    sys = tf(num,den);
    step(sys);
  
  