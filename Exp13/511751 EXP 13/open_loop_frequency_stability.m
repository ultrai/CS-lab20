oplp=tf([1],[1 2 1 0]);
clp=feedback(oplp,1,-1);
figure(1)
step(oplp)
title('open loop step response');
figure(2)
margin(oplp);
[Gm,Pm,wcg,Wcp]=margin(oplp)
figure(3)
step(clp)
S=stepinfo(clp)

