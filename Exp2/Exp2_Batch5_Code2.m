%%TF= (12)/((s+3)(s+4))
num= 12;
den=[1,7,12];
sys=tf(num,den);
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys);
margin(sys);