clc
%EFFECT ON TIME RESPONSE WITH Polepair%
% time response when poles are complex conjugate %
p4=[-(1/81)+(j/81) -(1/81)-(j/81)];
p5=[-81+81j -81-81j];
p6=[-405+405j -405-405j];
sys7=zpk(z1,p4,k)
sys8=zpk(z1,p5,k)
sys9=zpk(z1,p6,k)
step(sys7,t)
figure(1)
title('step response when poles are at (-1/81)+(j/81) ,(-1/81)-(j/81)')
figure(2)
step(sys8,t)
title('step response when poles are at (-81)+(j81) ,(-81)-(j81)')
figure(3)
step(sys9,t)
title('step response when poles are at (-405)+(j405) ,(-405)-(450j)')
stepinfo(sys7)
stepinfo(sys8)
stepinfo(sys9)

