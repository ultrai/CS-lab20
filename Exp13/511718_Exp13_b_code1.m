5%%effect of addition of poles to closed loop tf
p=[1 5 10 20];
Wn=input('Enter the value of wn');
zeta=input('enter the value of zeta');
s=tf('s');
for i=1:4
    num=Wn^2*p(i);
    den=[1 p(i)+2*zeta*Wn Wn^2+2*zeta*Wn*p(i) p(i)*Wn^2];
    G=tf(num,den)
    subplot(2,2,i)
    step(G)
    stepinfo(G)
end

