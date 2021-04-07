%% progarm1
[num,den]=ss2tf([0 2;1 -1],[0;1],[1 0],0);
t1=tf(num,den);
disp('obtained tf');
%% program 2
k1=tf(num,den);
s=tf('s');
k=2/((s-1)*(s+2));
disp('a,b,c,d matrices obtained from the given tf:');
l = ss(k);
[a,b,c,d]=ssdata(l);

%% program 3 
MatA = [-3 -1 0;2 0 0;0 -1 -1];
MatB = [1;0;1];
MatC = [1 0 1];
MatD = 0;
Qc = ctrb(MatA,MatB);

if(rank(Qc) == rank(MatA))
    disp('Given System is Controllable.');
else
    disp('Given System is Uncontrollable');
end

Qb = obsv(MatA,MatC);


if(rank(Qb) == rank(MatA))
    disp('Given System is Observable.');
else
    disp('Given System is Unobservable');
end


