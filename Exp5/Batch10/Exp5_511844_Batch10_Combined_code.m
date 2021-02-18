clc;
clear;
s=tf('s');
G1=1/((s+1)*(s+2));
G2=1/((s-1)*(s+2));
G3=1/(s*10);
%Openloop Step Response
figure(1)
step(G1)
grid on;
title('Openloop Step Response of G(s)=1/((s+1)*(s+2))')
stepinfo(G1)

figure(2)
step(G2)
grid on;
title('Openloop Step Response of G(s)=1/((s-1)*(s+2))')
stepinfo(G2)

figure(3)
step(G3)
grid on;
title('Openloop Step Response of G(s)=1/(10*s)')
stepinfo(G3)


%Closed Loop Transfer Function Time Response
%For +ve Unity Feedback

Y1=feedback(G1,-1)
figure(4)
step(Y1)
grid on;
title('step Response for G(s)=1/((s+1)*(s+2)) with Positive Unity Feedback')
stepinfo(Y1)

Y2=feedback(G2,-1)
figure(5)
step(Y2)
grid on;
title('step Response for G(s)=1/((s-1)*(s+2)) with Positive Unity Feedback')
stepinfo(Y2)

Y3=feedback(G3,-1)
figure(6)
step(Y3)
grid on;
title('step Response for G(s)=1/(10*s) with Positive Unity Feedback')
stepinfo(Y3)

%Closed Loop Transfer Function Time Response
%For -ve Unity Feedback

Y4=feedback(G1,1)
figure(7)
step(Y4)
grid on;
title('step Response for G(s)=1/((s+1)*(s+2)) with negative Unity Feedback')
stepinfo(Y4)

Y5=feedback(G2,1)
figure(8)
step(Y5)
grid on;
title('step Response for G(s)=1/((s-1)*(s+2)) with negative Unity Feedback')
stepinfo(Y5)

Y6=feedback(G3,1)
figure(9)
step(Y6)
grid on;
title('step Response for G(s)=1/(10*s) with negative Unity Feedback')
stepinfo(Y6)

%Closed Loop Transfer Function Time Response
%For A Pole at -1 in the -ve Feedback

H=1/(s+1);
Y7=feedback(G1,H)
figure(10)
step(Y7)
grid on;
title('Step Response of G(s)=1/((s+1)*(s+2)) with pole at -1 in negative Feedback')
stepinfo(Y7)

Y8=feedback(G2,H)
figure(11)
step(Y8)
grid on;
title('Step Response of G(s)=1/((s-1)*(s+2)) with pole at -1 in negative Feedback')
stepinfo(Y8)

Y9=feedback(G3,H)
figure(12)
step(Y9)
grid on;
title('Step Response of G(s)=1/(10*s) with pole at -1 in negative Feedback')
stepinfo(Y9)

%Closed Loop Transfer Function Time Response
%For A zero at -1 in the -ve Feedback

H=(s+1);
Y10=feedback(G1,H)
figure(13)
step(Y10)
grid on;
title('Step Response of G(s)=1/((s+1)*(s+2)) with Zero at -1 in negative Feedback')
stepinfo(Y10)

Y11=feedback(G2,H)
figure(14)
step(Y11)
grid on;
title('Step Response of G(s)=1/((s-1)*(s+2)) Zero at -1 in negative Feedback')
stepinfo(Y11)

Y12=feedback(G3,H)
figure(15)
step(Y12)
grid on;
title('Step Response of G(s)=1/(10*s) with Zero at -1 in negative Feedback')
stepinfo(Y12)






