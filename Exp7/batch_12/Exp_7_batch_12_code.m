lead1= tf([10],[1 1 0]);
figure(1);
margin(lead1)
lead2=tf([3.85 10],[0.162 1.162 1 0]);
figure(2);
margin(lead2)
lag1=tf([40],[1 6 5 0]);
figure(3);
margin(lag1)
lag2=tf([40 8],[8 48.2 41.2 1 0]);
figure(4);
margin(lag2)
laglead1=tf([25],[0.05 0.6 1 0]);
figure(5);
margin(laglead1)
laglead2=tf([37.3 68.65 1],[0.0744 1.6974 11.1938 16.693 1 0]);
figure(6);
margin(laglead2)
