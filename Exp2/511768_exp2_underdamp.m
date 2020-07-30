%%time response second order underdamped case system
num = [1];%numerator
den = [1 3 9]; 
G = tf(num,den) 
figure(1);
step(G)
grid
title('underdamped response')
