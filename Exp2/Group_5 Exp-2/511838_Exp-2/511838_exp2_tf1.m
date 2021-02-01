%%TF= (100/(s^2 +10s+100))
w=10;
g=0.5;

num= [w*w];
den=[1,2*g*w,w*w];
sys=tf(num,den);
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
bode(sys);
margin(sys);