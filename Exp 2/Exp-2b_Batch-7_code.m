%%Frequency Response of a Second Order System
%% with Transfer Function (12)/((s+3)*(s+4))
w=sqrt(12)
e=3.5/3.464
num=[w*w]
den=[1 2*e*w w*w]
sys1=tf(num,den)
figure(2)
[mr,wr]=getPeakGain(sys1)
wb=bandwidth(sys1)
bode(sys1)
margin(sys1)