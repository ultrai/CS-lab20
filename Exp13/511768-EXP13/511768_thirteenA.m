num = [500];
denr= [1 15 56 60]; 
%poles at -1,-3,-10
G= tf(num,denr)
figure(1)
nyquist(G)
title('checking for encirclement -1')
denr2= [1 10 -4 -40]; 
%poles at -1,2,-10
G2= tf(num,denr2)
figure(2)
nyquist(G2)
title('checking for encirclement -1')