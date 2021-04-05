% Step Response of Second Order overdamped sysytem
clc;
clear;
a=1/44;
s=tf("s");
G=1/(s*s+3*a*s+a*a);
figure(1)
step(G)
stepinfo(G)
title('Step Response of Second Order overdamped sysytem')

%Step Response of Second Order criticallydamped sysytem 
clc;
clear;
a=1/44;
s=tf("s");
% Transfer Function 
G=1/(s*s+2*a*s+a*a);
figure(2)
step(G)
stepinfo(G)
title('Step Response of Second Order criticallydamped sysytem')
% Step Response of Second Order undamped sysytem
clc;
clear;
a=1/44;
s=tf("s");
G=1/(s*s+2*a*a);
figure(3)
step(G)
stepinfo(G)
title('Step Response of Second Order undamped sysytem')