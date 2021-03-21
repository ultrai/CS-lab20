s=tf('s');
G=36/(s^3+6*s^2+11*s+6);
zpk(G);
rlocus(G);
grid
%%adding zero at 1
G1=zpk(1,[-1 -2 -3],36);
rlocus(G1);
title('root locus fig(adding zero at 1)')
grid
%%adding zero at -1
G2=zpk(-1,[-1 -2 -3],36);
rlocus(G2);
title ('root locus fig(adding zero at -1)')
grid
%%adding pole at 1
G3=zpk([],[-1 -2 -3 1],36);
rlocus(G3);
title('root locus fig(adding pole at 1)')
grid
%%adding pole at -1
G4=zpk([],[-1 -2 -3 1],36);
rlocus(G4);
title('root locus fig(adding pole at -1)')
grid
