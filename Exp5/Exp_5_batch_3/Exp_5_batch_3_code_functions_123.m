%open loop response of transfer function g(s)=1/(s+1)(s+2)
G=tf([1],[1 3 2])
figure(1)
step(G)
title('open loop response of transfer function g(s)=1/(s+1)(s+2)');
%closed loop response of the above systems with unity negative feedback
H1=tf(-1)
sys1=feedback(G,H1)
figure(2)
step(sys1)
title('closed loop response of transfer function g(s)=1/(s+1)(s+2) with unity negative feedback');
%closed loop response of the above systems with unity positive feedback
H2=tf(1)
sys2=feedback(G,H2)
figure(3)
step(sys2)
title('closed loop response of transfer function g(s)=1/(s+1)(s+2) with unity positive feedback');
%closed loop response of the above systems 
%with a pole at -1 in the feedback path
H3=tf([1],[1 1])
sys3=feedback(G,H3)
figure(4)
step(sys3)
title('closed loop response of transfer function g(s)=1/(s+1)(s+2) with a pole at -1 in the feedback path');
%closed loop response of the above systems 
%with a zero at -1 in the feedback path
H4=tf([1 1],[1])
sys4=feedback(G,H4)
figure(5)
step(sys4)
title('closed loop response of transfer function g(s)=1/(s+1)(s+2) with a zero at -1 in the feedback path');
%open loop response of transfer function g(s)=1/(s-1)(s+2)
G=tf([1],[1 1 -2])
figure(6)
step(G)
title('open loop response of transfer function g(s)=1/(s-1)(s+2)');
%closed loop response of the above systems with unity negative feedback
sys1=feedback(G,H1)
figure(7)
step(sys1)
title('closed loop response of transfer function g(s)=1/(s-1)(s+2) with unity negative feedback');
%closed loop response of the above systems with unity positive feedback
sys2=feedback(G,H2)
figure(8)
step(sys2)
title('closed loop response of transfer function g(s)=1/(s-1)(s+2) with unity positive feedback');
%closed loop response of the above systems 
%with a pole at -1 in the feedback path
sys3=feedback(G,H3)
figure(9)
step(sys3)
title('closed loop response of transfer function g(s)=1/(s-1)(s+2) with a pole at -1 in the feedback path');
%closed loop response of the above systems 
%with a zero at -1 in the feedback path
sys4=feedback(G,H4)
figure(10)
step(sys4)
title('closed loop response of transfer function g(s)=1/(s-1)(s+2) with a zero at -1 in the feedback path');
%open loop response of transfer function g(s)=1/10s
G=tf([1/10],[1 0])
figure(11)
step(G)
title('open loop response of transfer function g(s)=1/10s');
%closed loop response of the above systems with unity negative feedback
sys1=feedback(G,H1)
figure(12)
step(sys1)
title('closed loop response of transfer function g(s)=1/10s with unity negative feedback');
%closed loop response of the above systems with unity positive feedback
sys2=feedback(G,H2)
figure(13)
step(sys2)
title('closed loop response of transfer function g(s)=1/10s with unity positive feedback');
%closed loop response of the above systems 
%with a pole at -1 in the feedback path
sys3=feedback(G,H3)
figure(14)
step(sys3)
title('closed loop response of transfer function g(s)=1/10s with a pole at -1 in the feedback path');
%closed loop response of the above systems 
%with a zero at -1 in the feedback path
sys4=feedback(G,H4)
figure(15)
step(sys4)
title('closed loop response of transfer function g(s)=1/10s with a zero at -1 in the feedback path');