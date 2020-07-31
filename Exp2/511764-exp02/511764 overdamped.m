%second order system overdamp & critically damped
wn = input('enter natural frequency');
zeta = input('damping ratio');
num = [wn*wn];
denr = [1 2*zeta*wn wn*wn];
sys = tf(num,denr);
step(sys);
title('critically/over step response 2nd order')
%%same for overdamped and critically damped only zeta value will change  zeta 3 andzeta=1