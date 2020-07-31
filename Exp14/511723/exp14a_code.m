%%Root locus of a system
p = [ 0 0 0 0 10 ];
q = [ 1 8 36 80 0 ];
sys = tf(p,q)
figure(1);
rlocus(sys)
%%Root locus of system with pole at -5
s=tf('s');
syspol=(sys/(s+5));
figure(2);
rlocus(syspol)
%%Root locus of system with zero at -5
s=tf('s');
syszero=(sys*(s+5));
figure(3);
rlocus(syszero)