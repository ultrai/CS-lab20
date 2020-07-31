%%effect of addition of zeroes to closed loop tf
z=[1 5 10 20];
Wn=input('Enter the value of wn');
zeta=input('enter the value of zeta');
s=tf('s');
for i=1:4
    num=[Wn^2 Wn^2*z(i)];
    den= [z(i) 2*zeta*Wn*z(i) z(i)*Wn^2];
    G=tf(num,den);
    subplot(2,2,i)
    step(G)
    stepinfo(G)
end