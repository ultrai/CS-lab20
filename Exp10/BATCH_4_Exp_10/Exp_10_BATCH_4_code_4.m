
MatrixA = [-3 -1 0;2 0 0;0 -1 -1];
MatrixB = [1;0;1];
MatrixC = [1 0 1];
MatrixD = 0;

Qc = ctrb(MatrixA,MatrixB);
rankQc = rank(Qc);
disp('Controllable Matrix is Qc = ');
disp(Qc);
if(rankQc == rank(MatrixA))
disp('Given System is Controllable.');
else
disp('Given System is Uncontrollable');
end



Qb = obsv(MatrixA, MatrixC);
rankQb = rank(Qb);
disp('Observable Matrix is Qb = ');
disp(Qb);
if(rankQb == rank(MatrixA))
disp('Given System is Observable.');
else
disp('Given System is Unobservable');
end
