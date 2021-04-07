Y=zpk([],[-1 -2 -3],36);
rlocus(Y);
figure(1)
grid
%%adding zero at 1
Y1=zpk(1,[-1 -2 -3],36);
rlocus(Y1);
title('rootlocus of transferfunction by(adding zero at 1)')
figure(2)
grid
%%adding zero at -1
Y2=zpk([-1],[-1 -2 -3],36);
rlocus(Y2);
title ('rootlocus  of transferfunction by(adding zero at -1)')
figure(3)
grid
%%adding pole at 1
Y3=zpk([],[-1 -2 -3 1],36);
rlocus(Y3);
title('rootlocus  of transferfunction by(adding pole at 1)')
figure(4)
grid
%%adding pole at -1
Y4=zpk([],[-1 -2 -3 -1],36);
rlocus(Y4);
title('rootlocus  of transferfunction by(adding pole at -1)')
figure(5)
grid

