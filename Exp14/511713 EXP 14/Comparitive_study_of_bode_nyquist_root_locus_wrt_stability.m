%%Stability for 2nd order system
  num=[0 0 25];
  den=[1 7 25];
  g=tf(num,den);
  figure(1)
  bode(g);
  title('Bode plot of 25/(s^2 + 7*s + 25)');
  margin(g);
  figure(2);
  nyquist(g);
  title('Nyquist plot of 25/(s^2 + 7*s + 25)');
  figure(3);
  rlocus(g);
  title('Root Locus plot of 25/(s^2 + 7*s + 25)');


%% stability for 3rd order system
  num1=[0 9 4.5 9]; 
  den1=[1 7 25 0];
  g1=tf(num1,den1); 
  figure(4)
  bode(g1);
  margin(g1);
  title('Bode plot of (9*s^2 + 4.5*s + 9)/(s^3 + 7*s^2 + 25*s)');
  margin(g1); 
  figure(5);
  nyquist(g1);
  title('Nyquist plot of (9*s^2 + 4.5*s + 9)/(s^3 + 7*s^2 + 25*s)');
  figure(6);
  rlocus(g1);
  title('Root Locus plot of (9*s^2 + 4.5*s + 9)/(s^3 + 7*s^2 + 25*s)');