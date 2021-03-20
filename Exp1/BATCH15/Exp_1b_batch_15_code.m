%% time response of 2nd order critically damped system
Wn=50;
Dr=1;
h1=tf([0 0 Wn*Wn],[1 2*Wn*Dr Wn*Wn]);
step(h1)
title('step response of 2nd order under damped system')
%% time response of 2nd order over damped system
Wn=50;
Dr=1.5;
h1=tf([0 0 Wn*Wn],[1 2*Wn*Dr Wn*Wn]);
step(h1)
title('step response of 2nd order over damped system')
%% time response of 2nd order un damped system
Wn=50;
Dr=0;
h1=tf([0 0 Wn*Wn],[1 2*Wn*Dr Wn*Wn]);
step(h1)
title('step response of 2nd order un damped system')
%% time response of 2nd order under damped system
Wn=50;
Dr=0.5;
h1=tf([0 0 Wn*Wn],[1 2*Dr*Wn Wn*Wn]);
step(h1)
title('step response of 2nd order under damped system')
