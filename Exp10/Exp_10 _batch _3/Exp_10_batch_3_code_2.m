%program 1
a=[0 2;1 -1];
b=[0;1];
c=[1 0];
d=[0];
[num,den]=ss2tf(a,b,c,d);

%program 2
disp("obtained tf:")
g1=tf(num,den)
s=tf("s");
g=2/((s-1)*(s+2));
disp("A,B,C,D matrices obtained from the given tf:")
k1=ss(g);
[a,b,c,d]=ssdata(k1)
   
%program 3
A=[-3 -1 0;2 0 0;0 -1 -1];
B=[1;0;1];
C=[1 0 1];
QC=ctrb(A,B)
if(rank(Qc)==rank(A))
    disp("given system is controllable")
else
    disp("given system is uncontrollable")
end

Qb=obsv(A,C)
if(rank(Qb)==rank(A))
    disp("given system is Observable ")
else
    disp("given system is Unobservable  ")
end
     