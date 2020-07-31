num = [500];
den= [1 15 56 60]; 
%poles at -1,-3,-10
G= tf(num,den)
figure(1)
nyquist(G)
title('checking for encirclement -1')
denr1= [1 10 -4 -40]; 
%poles at -1,2,-10
G2= tf(num,denr1)
figure(2)
nyquist(G2)
title('checking for encirclement -1')