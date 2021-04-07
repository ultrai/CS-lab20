%state model to classical transfer function
%A=[0 2;1 -1]
%B=[0 ;1]
%C=[1 0]
%D=[0]
a= input ('Enter the values of a matrix');
b= input ('Enter the values of b matrix');
c= input ('Enter the values of c matrix');
d= input ('Enter the values of d matrix');
[num,den] = ss2tf(a,b,c,d,1);
Transferfunction=tf(num,den)

%transfer function to state space model
s=tf('s');
g1=2/((s-1)*(s+2));
disp("A,B,C,D matrices obtained from the given tf:")
p=ss(g1);
[a,b,c,d]=ssdata(p)

%state space representation
%check controllability and observability
%given
A=[-3 -1 0;2 0 0;0 -1 -1];
B=[1;0;1];
C=[1 0 1];
%for controllable matrix
Qc=ctrb(A,B)
rankQc= rank(Qc);
disp('Controllable matrix is Qc=');
disp(Qc);
if(rank(Qc)==rank(A))
    disp("given system is controllable")
else
    disp("given system is uncontrollable")
end

%for observation matrix
Qb=obsv(A,C)
rankQb= rank(Qb);
disp('Controllable matrix is Qb=');
disp(Qb);
if(rank(Qb)==rank(A))
    disp("given system is observable")
else
    disp("given system is unobservable")
end

