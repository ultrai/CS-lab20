%%code for Wr,Bandwidth,Mr
w=input('Enter the natural frequency');
e=input('Enter the damping ratio');
num=[w*w];
den=[1 2*e*w w*w];
g=tf(num,den);
[mr,wr]=getPeakGain(g);
wb=bandwidth(g);