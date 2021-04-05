%%transfer function G(s)=k/{(s+1)(s+3)(s+2)}
sys7=tf([0 2],[1 6 11 6]);
figure(6)
zpk(sys7)
rlocus(sys7)
title('root locus if k=2')
%%for different values of k
for i=1:3
    ki=input('enter k value');
    Gi=feedback(sys7*ki,-1);
    figure(i+1)
    zpk(Gi);
    rlocus(Gi);
    title('root locus if k=');
end