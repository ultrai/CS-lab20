% State Space Representation
% x' = Ax + Bu
% y = Cx + Du
% Check Controllability and Observability of a 3rd order System
% Given -------------------------------------------------------------------
MatrixA = [-3 -1 0;2 0 0;0 -1 -1];
MatrixB = [1;0;1];
MatrixC = [1 0 1];
MatrixD = 0;
% Objective ---------------------------------------------------------------
% 1) To Find Controllable Matrix Qc, its rank and check controllability
% 2) To Find Observable Matrix Qb, its rank and check observability
% Controllable Matrix -----------------------------------------------------
Qc = ctrb(MatrixA,MatrixB);
rankQc = rank(Qc);
disp('Controllable Matrix is Qc = ');
disp(Qc);
if(rankQc == rank(MatrixA))
disp('Given System is Controllable.');
else
disp('Given System is Uncontrollable');
end
% Observable Matrix -------------------------------------------------------
Qb = obsv(MatrixA, MatrixC);
rankQb = rank(Qb);
disp('Observable Matrix is Qb = ');
disp(Qb);
if(rankQb == rank(MatrixA))
disp('Given System is Observable.');
else
disp('Given System is Unobservable');
end