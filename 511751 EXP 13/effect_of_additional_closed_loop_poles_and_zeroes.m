  %%second order closed loop transfer function
  clc;
  clear;
  
  w=input('Enter the natural frequency');
  e=input('Enter the damping ratio');
  num=[w*w];
  den=[1 2*e*w w*w];
  g=tf(num,den);
  figure(1)
  step(g);
  title('Step Response given transfer function');
  %%Addition of closed loop poles
  for i=1:3
   p=input('Enter the pole value after negating');
   num=[w*w*p];
   den=[1 p+2*e*w w*w+2*e*w*p p*w^2]; 
   g=tf(num,den);
   figure(i+1)
   step(g);
   stepinfo(g);
   title('Step Response(Pole added at  ');
  end
%%Addition of closed loop zeros 
  for i=1:3
      z=input('Enter the zero after negating it');
      num=[w*w w*w*z];
      den=[z 2*e*w*z w*w*z];
      g=tf(num,den);
      figure(4+i)
      step(g);
      stepinfo(g);
      title('Step Response(zero added at   ');
  end
  
  
  