%%transfer function G(s)=k(s+1)/[(s+2)(s+3)]
p=[1 1];
q=[1 5 6];
sys=tf(p,q);
figure(1);
zpk(sys);
rlocus(sys);
title('Root Locus of (s+1)/[(s+2)(s+3)]');
%%for different values of k
for i=1:3
    ki=input('enter k value');
    gi=feedback(sys*ki,-1);
    figure(i+1)
    zpk(gi);
    rlocus(gi);
    title('Root Locus for k=');
end