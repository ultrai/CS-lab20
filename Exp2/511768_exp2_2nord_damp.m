%2nd order system overdamp & critically damped
wn = input('enter natural frequency');
zeta = input('damping ratio');
num = [wn*wn];
denr = [1 2*zeta*wn wn*wn];
sys = tf(num,denr);
step(sys);
title('critically/over step response 2nd order')
%overdamp input wn=4 ,zeta=4
%critically damp wn=4, zeta =1 