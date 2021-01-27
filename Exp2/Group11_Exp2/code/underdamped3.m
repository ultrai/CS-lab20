num=[4]
den=[1 1 4]
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys)
margin(sys)