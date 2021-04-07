%%transfer function G(s)=k/{(s+1)(s+3)(s+2)}
num=[0 40];
den=[1 6 11 6];
G=tf(num,den);
figure(1)
zpk(G)
rlocus(G)
title('root locus if k=40')
%%for different values of k
for x=1:3
    kx=input('enter k value');
    Gx=feedback(G*kx,-1);
    figure(x+1)
    zpk(Gx);
    rlocus(Gx);
    
end
