%OpenLoop Step Response for transfer function G(s)=1/(s^2+10s+20)
num=1;
den=[1 10 20];
plant=tf(num,den);
%StepResponse Of The plant
figure(1)
step(plant)
title('OpenLoop Step Response for transfer function G(s)=1/(s^2+10s+20)')
S = stepinfo(plant)
grid;
