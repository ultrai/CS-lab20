%%transfer function G(s)=k/{(s+1)(s+3)(s+2)}
num=[0 2];
den=[1 6 11 6];
G=tf(num,den);
figure(1)
zpk(G)
rlocus(G)
title('root locus if k=2')
%%for different values of k
for i=1:3
    ki=input('enter k value');
    Gi=feedback(G*ki,-1);
    figure(i+1)
    zpk(Gi);
    rlocus(Gi);
    title('root locus if k=');
end
