%% Experiment 10-B
%% Program1
a   = input( 'Enter the values of A matrix' );
b   = input( 'Enter the values of B matrix' );
c   = input( 'Enter the values of C matrix' );
d   = input( 'Enter the values of D matrix' );
[num,den] = ss2tf(a, b, c, d,1)
Transferfunction = tf(num , den)

%% Program2
num1 = input('Enter numerator polynomial values in the form of matrix array');
den1 = input('Enter denominator 1 values');
den2 = input('Enter denominator 2 values');
den3 = conv(den1,den2);
H    = tf(num1,den3)
P    = ss(H);
[a,b,c,d] = ssdata(P)

%% Program3
% State Space Representation
% x' = Ax + Bu
% у' = Сх + Du
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
%% Observable Matrix
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