%EFFECT ON TIME RESPONSE WITH POLES$%
% time response when pole is placed at -1/R, %
z1 = [];
p1 = [-1/81];
k =9;
sys1 =zpk(z1,p1,k)
t=[0:0.001:4];
step(sys1,t);
title('step response when pole is at -1/81');
stepinfo(sys1)
figure(2)
% time response when pole is at -R 
 p2 = [-81];
 sys2=zpk(z1,p2,k)
 step(sys2,t);
 stepinfo(sys2)
 title('step response when pole is at -81');
 figure(3)
 %time response when pole is at -5*R 
 p3= [-405];
 sys3=zpk(z1,p3,k)
step(sys3,t)
stepinfo(sys3)
 title('step response when pole is at -405');
 