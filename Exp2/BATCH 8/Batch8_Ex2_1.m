%frequency response for 2nd order system
w=input('enter the natural frequency');
e=input('enter the damping ratio');

  num=[w*w];
  den=[1 2*w*e w*w];
  g=tf(num,den);
 
  figure(1) 
  bode(g);
  margin(g);
%Example for a second order   
  
  num=[1 1]; 
  den=conv([1 0],[.5 1]); 
   g=tf(num,den); 
   figure(2) 
   bode(g);
   margin(g);