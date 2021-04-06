%to obtain tf from a,b,c,d matrices
a=[-3 1;0 -2];
b=[2;1];
c=[1 0];
d=[0];
[num,den]=ss2tf(a,b,c,d);
disp("obtained tf:")
g1=tf(num,den)
%to get a,b,c,d matrices from tf 
disp("A,B,C,D matrices obtained from the given tf:")
k=ss(g1);
[a,b,c,d]=ssdata(k)
%to verify controllability and observability
A=[0 1 0;0 0 1;-6 -11 -6];
B=[0;0;2];
C=[1 0 0];
Qc=ctrb(A,B)
if(rank(Qc)==rank(A))
    disp("given system is controllable")
else
    disp("given system is uncontrollable")
end
Qb=obsv(A,C)
if(rank(Qb)==rank(A))
    disp("given system is observable")
else
    disp("given system is unobservable")
end