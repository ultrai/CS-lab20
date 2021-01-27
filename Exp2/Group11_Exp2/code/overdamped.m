num=[12]
den=[1 7 12]
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys)
margin(sys)