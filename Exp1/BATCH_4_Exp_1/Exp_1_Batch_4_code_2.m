%% for underdamped system wn=25,e=0.5 %%%
sys1=tf([625],[1 25 625])
figure(1)
step(sys1)
stepinfo(sys1)
title('step rsponse for underdamped system')
figure(2)
impulse(sys1)
title('impulse response  for underdamped system')

%% for criticallydamped system wn=25,e=1 %%%
sys2=tf([625],[1 50 625])
figure(3)
step(sys2)
stepinfo(sys2)
title('step rsponse for criticallydamped system')
figure(4)
impulse(sys2)
title('impulse response  for criticallydamped system')

%% for overdamped system wn=25,e=2 %%%
sys3=tf([625],[1 100 625])
figure(5)
step(sys3)
stepinfo(sys3)
title('step rsponse for overdamped system')
figure(6)
impulse(sys3)
title('impulse response  for overdamped system')

%% for undamped system wn=25,e=0 %%%
sys4=tf([625],[1 0 625])
figure(7)
step(sys4)
stepinfo(sys4)
title('step rsponse for undamped system')
figure(8)
impulse(sys4)
title('impulse response  for undamped system')
