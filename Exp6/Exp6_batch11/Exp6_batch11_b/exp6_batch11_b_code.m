%%b)Effect of Open loop Gain on the transient response of closed loop system by using Root Locus
%%transfer function G(s)=k/{(s+1)(s+3)(s+2)}
k=1;
G=tf([0 k],[1 6 11 6]);
figure(1)
zpk(G)
rlocus(G)
title('root locus of k/{(s+1)(s+3)(s+2)}')

%%for different values of k
k1=10;
G1=feedback(G*k1,1);
zpk(G1)
figure(2)
step(G1)
title('Step response of Closed loop system for k=10')

k2=20;
G2=feedback(G*k2,1);
zpk(G2)
figure(3)
step(G2)
title('Step response of Closed loop system for k=20')

k3=30;
G3=feedback(G*k3,1);
zpk(G3)
figure(4)
step(G3)
title('Step response of Closed loop system for k=30')

