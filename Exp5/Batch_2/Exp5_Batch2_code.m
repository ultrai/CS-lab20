%%open loop response of transfer function 1
p=[1];
q=[1 3 2];
G=tf(p,q);
figure(1)
step(G);
title('step response of 1/(s+1)(s+2');
%%closed loop response of the transfer function for positive feedback
p=[1];
q=[1 3 2];
G=tf(p,q);
t=feedback(G,1);
step(t);
figure(2);
step(t);
title('step response of closed loop positive feedback');
%%closed loop response for unity negative feedback
p=[1];
q=[1 3 2];
G=tf(p,q);
t=feedback(G,-1);
figure(3)
step(t);
title('step response of closed loop unity negative feedback');
%% closed loop response for the transfer function with pole at -1 in feedback path
p=[1 1];
q=[1 4 5 3];
G=tf(p,q);
figure(4)
step(G);
title('step response for the transfer function with pole at -1 in feedback path for negative feedback')

%%closed loop response for the transfer function with pole at -1 in
%%feedback path in positive path
p=[1 1];
q=[1 4 5 1];
G=tf(p,q);
figure(5)
step(G);
title('step response for the transfer function with pole at -1 in feedback path for positive feedback')
%% closed loop response for the transfer function with zero at -1 in feedback path for negative feedback
p=[1];
q=[1 4 3];
G=tf(p,q);
figure(6)
step(G);
title('step response for the transfer function with zero at -1 in feedback path for negative feedback')

%% closed loop response for the transfer function with zero at -1 in feedback path for  positive feedback
p=[1];
q=[1 2 1];
G=tf(p,q);
figure(7)
step(G);
title('step response for the transfer function with zero at -1 in feedback path for positive feedback')


%%open loop response of transfer function 1
p=[1];
q=[1 1 -2];
G=tf(p,q);
figure(8)
step(G);
title('step response of 1/(s-1)(s+2)');
%%closed loop response of the transfer function for positive feedback
p=[1];
q=[1 1 -2];
G=tf(p,q);
t=feedback(G,1);
step(t);
figure(9);
step(t);
title('step response of closed loop positive feedback');
%%closed loop response for unity negative feedback
p=[1];
q=[1 1 -2];
G=tf(p,q);
t=feedback(G,-1);
figure(10)
step(t);
title('step response of closed loop unity negative feedback');
%% closed loop response for the transfer function with pole at -1 in feedback path
p=[1 1];
q=[1 2 -1 -1];
G=tf(p,q);
figure(11)
step(G);
title('step response for the transfer function with pole at -1 in feedback path for negative feedback')

%%closed loop response for the transfer function with pole at -1 in
%%feedback path in positive path
p=[1 1];
q=[1 2 -1 3];
G=tf(p,q);
figure(12)
step(G);
title('step response for the transfer function with pole at -1 in feedback path for positive feedback')
%% closed loop response for the transfer function with zero at -1 in feedback path for negative feedback
p=[1];
q=[1 2 1];
G=tf(p,q);
figure(13)
step(G);
title('step response for the transfer function with zero at -1 in feedback path for negative feedback')

%% closed loop response for the transfer function with zero at -1 in feedback path for  positive feedback
p=[1];
q=[1 0 -3];
G=tf(p,q);
figure(14)
step(G);
title('step response for the transfer function with zero at -1 in feedback path for positive feedback')


%%open loop response of transfer function 1
p=[1];
q=[10 0];
G=tf(p,q);
figure(15)
step(G);
title('step response of 1/(10s)');
%%closed loop response of the transfer function for positive feedback
p=[1];
q=[10 0];
G=tf(p,q);
t=feedback(G,1);
step(t);
figure(16);
step(t);
title('step response of closed loop positive feedback');
%%closed loop response for unity negative feedback
p=[1];
q=[10 0];
G=tf(p,q);
t=feedback(G,-1);
figure(17)
step(t);
title('step response of closed loop unity negative feedback');
%% closed loop response for the transfer function with pole at -1 in feedback path
p=[1 1];
q=[10 10 1];
G=tf(p,q);
figure(18)
step(G);
title('step response for the transfer function with pole at -1 in feedback path for negative feedback')

%%closed loop response for the transfer function with pole at -1 in
%%feedback path in positive path
p=[1 1];
q=[10 10 -1];
G=tf(p,q);
figure(19)
step(G);
title('step response for the transfer function with pole at -1 in feedback path for positive feedback')
%% closed loop response for the transfer function with zero at -1 in feedback path for negative feedback
p=[1];
q=[11 1];
G=tf(p,q);
figure(20)
step(G);
title('step response for the transfer function with zero at -1 in feedback path for negative feedback')

%% closed loop response for the transfer function with zero at -1 in feedback path for  positive feedback
p=[1];
q=[9 -1];
G=tf(p,q);
figure(21)
step(G);
title('step response for the transfer function with zero at -1 in feedback path for positive feedback')


