%% frequency response of second order system of TF=100/s^2+10s+100
w=10;
e=0.5;
num=w*w;
den=[1,2*e*w,w*w];
openlooptf=tf([100],[1,10,0]);
g=tf(num,den);
[mr,wr]=getPeakGain(g);
wb=bandwidth(g);
figure(1)
bode(openlooptf)
margin(openlooptf)

%%frequency response of second order system of TF=12/s^2+7s+12
w=3.46410161514;
e=1.01036297108;
num=w*w;
den=[1,2*e*w,w*w];
openlooptf=tf([12],[1,7,0]);
g=tf(num,den);
[mr,wr]=getPeakGain(g);
wb=bandwidth(g);
figure(2)
bode(openlooptf)
margin(openlooptf)
