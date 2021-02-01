num=[121]
den=[1 13.2 121]
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys)
margin(sys)