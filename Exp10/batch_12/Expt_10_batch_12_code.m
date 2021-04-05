%% EXPERIMENT 10_A
ng1=[1]; dg1=[1 0]; 
sysg1 =tf(ng1, dg1)
ng2=[1];dg2 = [1 0];
sysg2=tf(ng2, dg2)
ng3=[1]; dg3=[1 0]; 
sysg3=tf (ng3, dg3)
ng4=[1];dg4=[1 0]; 
sysg4= tf (ng4, dg4)
nh1=[1];dh1=[1];
sysh1= tf (nh1, dh1)
nh2=[1];dh2=[1];
sysh2=tf(nh2, dh2)
nh3=[1];dh3=[1];
sysh3=tf(nh3, dh3)
sys1=series (sysg3, sysg4)
sys2=feedback (sys1, sysh1,+1)
sys3=series (sysg2, sys2)
sys4=feedback (sys3, sysh2,-1)
sys5=series (sysg1, sys4) ;
sys= feedback (sys5, [1])


%% EXPERIMENT 10_B
%%Program1
a= input ( 'Enter the values of A matrix' );
b= input ( 'Enter the values of B matrix');
c= input ('Enter the values of C matrix');
d= input ('Enter the values of D matrix');
[num, den] = ss2tf (a, b, c, d,1)
Transferfunction = tf (num , den)

%%Program2
H=zpk ([],[1,-2],[2]);
P= ss(H);
[a,b,c,d] = ssdata(P)

%%Program3
% State Space Representation
% x' = Ax + Bu
% у 3D Сх + Du
% Check Controllability and Observability of a 3rd order System
% Given ---
MatrixA = [-3 -1 0;2 0 0;0 -1 -1];
MatrixB = [1;0;1];
MatrixC = [1 0 1];
MatrixD = 0;
% Objective
% 1) To Find Controllable Matrix Qc, its rank and check controllability
% 2) To Find Observable Matrix Qb, its rank and check observability
% Controllable Matrix ---
Qc = ctrb(MatrixA,MatrixB);
rankQc = rank(Qc);
disp('Controllable Matrix is Qc = ');
disp(Qc);
if(rankQc == rank(MatrixA))
disp('Given System is Controllable.');
else
disp('Given System is Uncontrollable');
end
% Observable Matrix
Qb = obsv(MatrixA, MatrixC);
rankQb = rank(Qb);
disp('Observable Matrix is Qb = ');
disp(Qb);
if(rankQb == rank(MatrixA))
disp('Given System is Observable.');
else
disp('Given System is Unobservable');
end
% End of Program