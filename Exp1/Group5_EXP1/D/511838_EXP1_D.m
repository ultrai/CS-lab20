
z = [0 2888];
p = [1,76,2888];
sys = tf(z,p);
step(sys);
figure(1)
title('Step response of second order system TF=(2888)/(s^2+76s+2888)')

%%Effect of zero at (-1/38) on step response of Second Order 

z = [2888 (2888/38)];
p = [1,76,2888];
sys1 = tf(z,p);
figure(2)
step(sys1);
title('Effect of addition of Zero at (-1/38) on Step response of second order system TF=(2888)/(s^2+76s+2888)')

%%Effect of zero at (-38) on step response of Second Order 

z = [2888 (2888*38)];
p = [1,76,2888];
sys2 = tf(z,p);
figure(3)
step(sys2);
title('Effect of addition of Zero at (-38) on Step response of second order system TF=(2888)/(s^2+76s+2888)')





