%% Design of Lag, Lead and Lag-Lead Compensator Networks

%% Lag Compensator Network
%% Open Loop Transfer Function 
a1   = [8];
b1   = [1 6 5 0];
t1   = tf(a1,b1)
figure(1)
bode(t1),
title('Open Loop Transfer Function of Uncompensated Lag Network')
%% Open Loop Transfer of lag Compensator Network
a2   = [40 8];
b2   = [8 418.2 41.2 1 0];
t2   = tf(a2,b2)
figure(2)
bode(t2),
title('Open Loop Transfer Function of Compensated Lag Network')


%% Lead Compensator Network
%% Open Loop Transfer Function
c1   =  [10];
d1   =  [1 1 0];
k1   =  tf(c1,d1)
figure(3)
bode(k1),
title('Open Loop Transfer Function of Uncompensated Lead Network')
%% Open Loop Transfer of lead Compensator Network
c2   = [3.85 10];
d2   = [0.162 1.162 1 0];
k2   = tf(c2,d2)
figure(4)
bode(k2),
title('Open Loop Transfer Function of Compensated Lead Network') 


%% Lag-Lead Compensator
%% Open loop Transfer Function
e1   = [25];
f1   = [0.05 0.6 1 0];
m1   = tf(e1,f1)
figure(5)
bode(m1),
title('Open Loop Transfer Function of Uncompensated Lag-Lead Network')
%% Open Loop Transfer Function of Lag-Lead Compensator Network
e2   = [37.3 68.65 25];
f2   = [0.0744 1.69745 11.1938 16.693 1 0];
m2   = tf(e2,f2)
figure(6)
bode(m2),
title('Open Loop Transfer Function of Compensated Lag-Lead Network')