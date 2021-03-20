%%root locus for the given transfer function
p=[36];
q=[1 6 11 6];
sys=tf(p,q);
zpk(sys);
figure(1)
rlocus(sys)
grid;
title('root locus for the transfer function')

%%root locus for the given transfer function for pole at +1
p=[36];
q=[1 5 5 -5 5];
sys=tf(p,q);
zpk(sys);
figure(2)
rlocus(sys)
grid;
title('root locus for the transfer function for pole at +1')

%%root locus for the given transfer function for pole at -1
p=[36];
q=[1 7 17 17 6];
sys=tf(p,q);
zpk(sys);
figure(3)
rlocus(sys)
grid;
title('root locus for the transfer function for pole at -1')

%%root locus for the given transfer function for zero at +1
p=[36 -36];
q=[1 6 11 6];
sys=tf(p,q);
zpk(sys);
figure(4)
rlocus(sys)
grid;
title('root locus for the transfer function for zero at +1')

%%6B
%%transfer function G(s)=k/s^3+6s^2+11s+6
p=[36];
q=[1,6,11,6];
sys=tf(p,q);
figure(5)
zpk(sys);
rlocus(sys);
title('root locus of 36/s^3+6s^2+11s+6');
%%for different values of k
for i=1:3
    ki=input('enter k value');
    gi=feedback(sys*ki,-1);
    figure(i+1)
    zpk(gi);
    rlocus(gi);
    title('Root locus for k=');
end

%%nyquist plot for the transfer function
p=[k]
q=[1 12 32 0]
g1=tf(p,q);1
margin(g1);
figure(6)
nyquist(g1);
title('nyquist plot for the transfer function');
figure(7)
bode(g1);
margin(g1);
figure(8);
rlocus(g1);
title('root locus for the transfer function');


