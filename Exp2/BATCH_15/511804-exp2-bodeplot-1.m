%frequency response for 2nd order system
w=10;
e=0.5;

  num=[w*w];
  den=[1 2*w*e w*w];
  g=tf(num,den);
  [Mr,Wr]=getPeakGain(g);
  Wb=bandwidth(g);
  figure(1) 
  bode(g);
  margin(g);
%Example for a second order   
  
