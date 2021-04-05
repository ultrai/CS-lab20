%%For transfer function G(s)=1/10s
num=[1];
den=[10 0];
G1 = tf(num,den)
figure(1)
step(G1)
stability=isstable(G1)
stepinfo(G1)
title('Open loop response')
%%Closed loop system with unity negative feedback
H1=1;
T1 = feedback(G1,H1)
figure(2)
step(T1)
stability=isstable(T1)
stepinfo(T1)
title('CL response with unity negative feedback')
%%Closed loop system with unity positive feedback
H2=1;
T2 = feedback(G1,H2,+1)
figure(3)
step(T2)
stability=isstable(T2)
stepinfo(T2)
title('CL response with unity positive feedback')
%%Closed loop system with a pole at -1 in the feedback path
H3=tf([1],[1 1])
T3 = feedback(G1,H3)
figure(4)
step(T3)
stability=isstable(T3)
stepinfo(T3)
title('CL response with pole at -1 in feedback path')
%%Closed loop system with a zero at -1 in the feedback path
H4=tf([1 1],[1])
T4 = feedback(G1,H4)
figure(5)
step(T4)
stability=isstable(T4)
stepinfo(T4)
title('CL response with zero at -1 in feedback path')