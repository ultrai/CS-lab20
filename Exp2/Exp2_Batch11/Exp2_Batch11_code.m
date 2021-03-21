%%Frequency response of second order system
%%Overdamped
num=[12];
den=[1 7 12];
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
figure(1)
bode(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
title('Frequency response of G(s)=12/(s+3)(s+4)')
%%Undamped
num=[4];
den=[1 0 4];
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
figure(2)
bode(sys)
title('Frequency response of G(s)=4/(s^2+4)')
%%Underdamped1
num=[100];
den=[1 10 100];
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
figure(3)
bode(sys)
title('Frequency response of G(s)=100/(s^2+10s+100)')
%%Underdamped2
num=[121];
den=[1 13.2 121];
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
figure(4)
bode(sys)
title('Frequency response of G(s)=121/(s^2+13.2s+121)')
%%Underdamped3
num=[4];
den=[1 1 4];
sys=tf(num,den)
[mr,wr]=getPeakGain(sys)
wb=bandwidth(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
figure(5)
bode(sys)
title('Frequency response of G(s)=4/(s^2+s+4)')