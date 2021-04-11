% Exp10 - B
% Batch - 9
[n,d]=ss2tf([0 2;1 -1],[0;1],[1 0],0);
transF=tf(n,d);
fprintf("Transfer Function obtained after conversion");
%% Part-2
K1=tf(n,d);
s=tf('s');
k=2/((s-1)*(s+2));
fprintf("A,B,C,D Matrices Obtained from tf are :");
temp=ss(k);
[A,B,C,D]=ssdata(temp)
%% Part-3
A1=[-3 -1 0;2 0 0;0 -1 -1];
B1=[1;0;1];
C1=[1 0 1];
D1=0;

Qc=ctrb(A1,B1)
if(rank(Qc) == rank(A1))
    fprintf("System is controllable");
else
    frpintf("System is uncontrollable");
end

Qb=obsv(A1,C1)

if(rank(Qb) == rank(A1))
    fprintf("System is controllable");
else
    fprintf("System is uncontrollable");
end

