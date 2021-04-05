clear;
clc;
sys1=tf([36],[1 6 11 6])
figure(1)
rlocus(sys1)
grid;
title('root locus of 36/(s^3+6s^2+11s+6)')
%addition of pole at -1
sys2=tf([36],[1 7 17 17 6])
figure(2)
rlocus(sys2)
grid;
title('root locus of 36/(s^3+6s^2+11s+6)(s+1)')
%addition of pole at +1
sys3=tf([36],[1 5 5 -5 -6])
figure(3)
rlocus(sys3)
grid;
title('root locus of 36/(s^3+6s^2+11s+6)(s-1)')
%addition of zero at -1
sys4=tf([36 36],[1 6 11 6])
figure(4)
rlocus(sys4)
grid;
title('root locus of 36(s+1)/(s^3+6s^2+11s+6)')
%addition of zero at +1
sys5=tf([36 -36],[1 6 11 6])
figure(5)
rlocus(sys5)
grid;
title('root locus of 36(s-1)/(s^3+6s^2+11s+6)')