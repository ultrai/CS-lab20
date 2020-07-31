%%Bode plot of first system
z=[];
p=[0 -1 -2];
k=1;
G=zpk(z,p,k);
figure(1)
bode(G)
%%Step response of closed loop system
figure(2)
step(feedback(G,1))
%%Nyquist plot of first system
figure(3)
nyquist(G)
%%Root Locus plot of first system
figure(4)
rlocus(G)
%%Bode plot of second system
k1=10;
S=zpk(z,p,k1);
figure(5)
bode(S)
%%Nyquist plot of second system
figure(6)
nyquist(S)
%%Step Response of second closed loop system
figure(7)
step(feedback(S,1))