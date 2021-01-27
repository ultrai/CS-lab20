num=[100]
den=[1 10 100]
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys)
margin(sys)