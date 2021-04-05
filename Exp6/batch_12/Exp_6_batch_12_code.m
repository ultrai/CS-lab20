s=tf('s');
G=36/(s^3+6*s^2+11*s+6);
figure(1);
zpk(G);
rlocus(G);
grid
%%adding zero at 1
G1=zpk(1,[-1 -2 -3],36);
figure(2);
rlocus(G1);
title('root locus fig(adding zero at 1)')
grid
%%adding zero at -1
G2=zpk(-1,[-1 -2 -3],36);
figure(3);
rlocus(G2)
title ('root locus fig(adding zero at -1)')
grid
%%adding pole at 1
G3=zpk([],[-1 -2 -3 1],36);
figure(4);
rlocus(G3);
title('root locus fig(adding pole at 1)')
grid
%%adding pole at -1
G4=zpk([],[-1 -2 -3 -1],36);
figure(5);
rlocus(G4);
title('root locus fig(adding pole at -1)')
grid
%%nyquist plot for the transfer function
num=1;
den=[1 3 2 0];
G6=tf(num,den);
figure(6)
nyquist(G6);
%%bodeplot
num1 = 10;
den1 = [0.04 0.5 1 0];
G7 = tf(num1,den1);
figure(7);
margin(G7)
num2 =36;
den2 =[1 6 11 6];
G8 =tf(num2,den2);
figure(8);
margin(G8)
