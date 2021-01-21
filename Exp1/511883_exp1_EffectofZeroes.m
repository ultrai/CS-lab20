%EFFECT ON TIME RESPONSE WITH Zeroes%
% time response when zero is placed at -1/R
z1=[];
p2=[-81];
z2=[-1/81 ];
sys4 = zpk(z2,p2,k)
step(sys4,t);
stepinfo(sys4)
title('step response when zero is at -1/81');
figure(2)
%time response when zero is placed at -R 
z3=[-81];
sys5=zpk(z3,p2,k)
step(sys5,t)
stepinfo(sys5)
title('step response when zero is at -81');
figure(3)
%time response when zero is at 1/R
z4=[1/81];
sys6=zpk(z4,p2,k)
step(sys6,t)
stepinfo(sys6)
title('step response when zero is at 1/81');
figure(4)
%time response when zero is at 5R
z5=[-405];
sys1=zpk(z5,p2,k)
step(sys1,t)
stepinfo(sys1)
title('step response when zero is at -250');
