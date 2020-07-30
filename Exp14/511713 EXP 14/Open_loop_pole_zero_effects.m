%%additon of open loop poles
p=[0 10 20];
q=[1 7 12];
sys=tf(p,q)
figure(1)
zpk(sys)
rlocus(sys)

%%additon of open loop poles
p=[0 0 10];
q=[1 2 0];
sys=tf(p,q)
figure(2)
zpk(sys)
rlocus(sys)
grid;
title('Root Locus Plot of 10/[s(s+2)]')

%%additon of open loop poles
p=[0 0 0 10];
q=[1 6 8 0];
sys=tf(p,q)
figure(3)
zpk(sys)
rlocus(sys)
grid;
title('Root Locus Plot of 10/[s(s+2)(s+4)]')

p=[0 0 0 0 10];
q=[1 12 44 48 0];
sys=tf(p,q)
figure(4)
zpk(sys)
rlocus(sys)
grid;
title('Root Locus Plot of 10/[s(s+2)(s+4)(s+6)]')

%%additon of open loop zeros
p=[0 10 40];
q=[1 2 0];
sys=tf(p,q)
figure(5)
zpk(sys)
rlocus(sys)
grid;
title('Root Locus Plot of 10(s+4)/[s(s+2)]')

%%additon of open loop zeros
p=[0 10 100 240];
q=[1 3 2 0];
sys=tf(p,q)
figure(6)
zpk(sys)
rlocus(sys)
grid;
title('Root Locus Plot of 10(s+4)(s+6)/[s(s+2)(s+1)]')