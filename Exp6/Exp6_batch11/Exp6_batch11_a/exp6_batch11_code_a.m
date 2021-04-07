%%a)Effect of Open loop Poles and Zeroes on Root Locus contour
s=tf('s');
G=36/(s^3+6*s^2+11*s+6);
zpk(G);
figure(1)
rlocus(G);
title('Root locus of G(s)=36/(s^3+6*s^2+11*s+6)')
grid
%%adding zero at 1
G1=zpk(1,[-1 -2 -3],36);
figure(2)
rlocus(G1);
title('adding zero at 1 for G(s)=36/(s^3+6*s^2+11*s+6) ')
grid
%%adding zero at -1
G2=zpk(-1,[-1 -2 -3],36);
figure(3)
rlocus(G2);
title ('adding zero at -1 for G(s)=36/(s^3+6*s^2+11*s+6) ')
grid
%%adding pole at 1
G3=zpk([],[-1 -2 -3 1],36);
figure(4)
rlocus(G3);
title('adding pole at 1 for G(s)=36/(s^3+6*s^2+11*s+6)')
grid
%%adding pole at -1
G4=zpk([],[-1 -2 -3 -1],36);
figure(5)
rlocus(G4);
title('adding pole at -1 for G(s)=36/(s^3+6*s^2+11*s+6)')
grid