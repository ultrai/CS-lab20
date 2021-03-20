%%%%%% second order systems with pole pairs (-a+ai),(-a-ai)%%%%%%

%%% for a=1/32   %%%%%%
sys1=tf([1/512],[1 1/16 1/512])
figure(1)
step(sys1)
stepinfo(sys1)
title('step response of  pole pair for a=1/32')
figure(2)
impulse(sys1)
title('impulse response of  pole pair for a=1/32')


%%% for a=32   %%%%%%
sys2=tf([2048],[1 64 2048])
figure(3)
step(sys2)
stepinfo(sys2)
title('step response of  pole pair for a=32')
figure(4)
impulse(sys2)
title('impulse response of  pole pair for a=32')


%%% for a=160  %%%%%%
sys3=tf([51200],[1 320 51200])
figure(5)
step(sys3)
stepinfo(sys3)
title('step response of  pole pair for a=160')
figure(6)
impulse(sys3)
title('impulse response of  pole pair for a=160')
