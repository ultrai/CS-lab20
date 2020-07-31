  %%second order closed loop transfer function
  w=input('Enter the natural frequency');
  e=input('Enter the damping ratio');
  num=[w*w];
  den=[1 2*e*w w*w];
  g=tf(num,den);
  figure(1)
  step(g);
  title('Step Response of 25/(s^2+7s+25)');
  %%Addition of closed loop poles
  for i=1:3
   pi=input('Enter the pole');
   numi=[w*w*pi];
   deni=[1 pi+2*e*w w*w+2*e*w*pi pi*w^2]; 
   gi=tf(numi,deni);
   figure(i+1)
   step(gi);
   stepinfo(gi);
   title('Step Response(Pole added at  )');
  end
%%Addition of closed loop zeros 
  for i=1:3
      zi=input('Enter the zero');
      numi=[w*w w*w*zi];
      deni=[zi 2*e*w*zi w*w*zi];
      gi=tf(numi,deni);
      figure(4+i)
      step(gi);
      stepinfo(gi);
      title('Step Response(zero added at   )');
  end