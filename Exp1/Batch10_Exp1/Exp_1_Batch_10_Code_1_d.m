%step response of system for pole pair at s=1/R+1/Ri,1/R-1/Ri, R=44
clc;
clear;
a=1/44;
num=[2*a^2];
den=[1 2*a 2*a^2];
sys1=tf(num,den);
figure(1)
step(sys1,0:.001:1);
stepinfo(sys1)
title("step response of second order system for pole pair at s=1/R+1/Ri,1/R-1/Ri, R=44");

%step response of system for pole pair at s=5*R+5*Ri,5*R-5*Ri, R=44
clc;
clear;
a=5*44;
num=[2*a^2];
den=[1 2*a 2*a^2];
sys2=tf(num,den);
figure(2)
step(sys2,0:.001:0.1);
stepinfo(sys2)
title("step response of second order system for pole pair at s=5*R+5*Ri,5*R-5*Ri, R=44");

%step response of system for pole pair at s=R+Ri,R-Ri, R=44
clc;
clear;
a=44;
num=[2*a^2];
den=[1 2*a 2*a^2];
sys3=tf(num,den);
figure(3)
step(sys3,0:.001:0.1);
stepinfo(sys3)
title("step response of second order system for pole pair at s=R+Ri,R-Ri, R=44");

%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-1/R R=44
clc;
a=44;
num=[2*a^3 2*a^2];
den=[1 2*a 2*a^2];
sys4=tf(num,den);
figure(4)
step(sys4,0:.001:0.25);
stepinfo(sys4)
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-1/R R=44");

%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-R R=44
a=44;
num=[2*a 2*a^2];
den=[1 2*a 2*a^2];
sys5=tf(num,den);
figure(5)
step(sys5,0:.001:0.25);
stepinfo(sys5)
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-R R=44");

%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-5R R=44
clear;
a=44;
num=[2*a/5 2*a^2];
den=[1 2*a 2*a^2];
sys6=tf(num,den);
figure(6)
step(sys6,0:.001:0.25);
stepinfo(sys6)
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=-5R R=44");

%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=1/R R=44
a=44;
num=[-2*a^3 2*a^2];
den=[1 2*a 2*a^2];
sys7=tf(num,den);
figure(7)
step(sys7,0:.001:0.25);
stepinfo(sys7)
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=1/R R=44");

%step response of system for pole pair at s=R+Ri,R-Ri,zero at s=5R R=44
a=44;
num=[-2*a/5 2*a^2];
den=[1 2*a 2*a^2];
sys8=tf(num,den);
figure(8)
step(sys8,0:.001:0.25);
stepinfo(sys8)
title("step response of system for pole pair at s=R+Ri,R-Ri,zero at s=5R R=44");

