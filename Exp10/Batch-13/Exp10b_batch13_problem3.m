% State Space Representation
% x' = Ax + Bu
% y = Cx + Du
% Check Controllability and Observability of a 3rd order System
% Given -------------------------------------------------------------------
Matrix1 = [-3 -1 0;2 0 0;0 -1 -1];
Matrix2 = [1;0;1];
Matrix3 = [1 0 1];
Matrix4 = 0;
% Objective ---------------------------------------------------------------
% 1) To Find Controllable Matrix Qc, its rank and check controllability
% 2) To Find Observable Matrix Qb, its rank and check observability
% Controllable Matrix -----------------------------------------------------
Qc = ctrb(Matrix1,Matrix2);
rankQc = rank(Qc);
disp('Controllable Matrix is Qc = ');
disp(Qc);

% Observable Matrix -------------------------------------------------------
Qb = obsv(Matrix1, Matrix3);
rankQb = rank(Qb);
disp('Observable Matrix is Qb = ');
disp(Qb);

% End of Program ----------------------------------------------------------
