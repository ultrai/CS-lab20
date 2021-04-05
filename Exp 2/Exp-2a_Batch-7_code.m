%% FREQUENCY RESOPNSE OF A SECOND ORDER SYSTEM
%% With Transfer Function (100/(s^2+10*s+100))
w=10
e=0.5
num=[w*w]
den=[1 2*e*w w*w]
sys=tf(num,den)
figure(1)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys)
margin(sys)