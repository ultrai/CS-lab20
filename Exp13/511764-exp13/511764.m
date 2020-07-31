num1 = [500];
den1= [1 15 56 60]; 
%poles at -1,-3,-10
G1= tf(num,denr)
figure(1)
nyquist(G1)
title('checking for encirclement -1')
den2= [1 10 -4 -40]; 
%poles at -1,2,-10
G2= tf(num,den2)
figure(2)
nyquist(G2)
title('checking for encirclement -1')