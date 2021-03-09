%Effect of open loop poles and zeroes on root locus
%For transfer function gh=36/(s^3+6*s^2+11*s+6)
clc;
clear;
s=tf('s');
p=[1];
q=[1 6 11 6];
k=36;
sys=k*tf(p,q)
figure(1)
rlocus(sys)
grid on;
title('root locus plot of tf =36/(s^3+6*s^2+11*s+6)');

%Effect of Adding Open Loop Poles On Root Locus
%Effect on root locus by adding pole at +1

sys1=sys/(s-1);
figure(2)
rlocus(sys1)
grid on;
title('root locus plot of tf =36/(s+1)(s+2)(s+3)(s-1)');
%Effect on root locus by adding pole at -1
sys2=sys/(s+1);
figure(3)
rlocus(sys2)
grid on;
title('root locus plot of tf =36/(s+1)^2(s+2)(s+3)');

%Effect of Adding Open Loop Zeroes Root Locus
%Effect on root locus by Adding Zero at +1

sys3=sys*(s-1);
figure(4)
rlocus(sys3)
grid on;
title('root locus plot of tf =36(s-1)/(s+1)(s+2)(s+3)');
%Effect on root locus by Adding Zero at -1
sys4=sys*(s+1);
figure(5)
rlocus(sys4)
grid on;
title('root locus plot of tf =36(s+1)/(s+1)(s+2)(s+3)');
