%%effect of adding poles and zeroes on second order system
%for pole pairs a=-31+31i and b=-31-31i
a=-31+31i;
b=-31-31i;
z=[];
p=[a b];
k=1000;
sys1=zpk(z,p,k);
figure(1);
step(sys1);
title('step response of a second order system for R=31');
%%addition of pole at -31
z=[];
p=[a b -31];
k=1000;
sys2=zpk(z,p,k);
figure(2);
step(sys2);
title('step response of a second order system for R=31(addition of pole at -31)');
%%addition of pole at -1/31
z=[];
p=[a b -1/31];
k=1000;
sys3=zpk(z,p,k);
figure(3);
step(sys3);
title('step response of a second order system for R=31(addition of pole at -1/31)');
%%addition of pole at -5*31
z=[];
p=[a b -5*31];
k=1000;
sys4=zpk(z,p,k);
figure(4);
step(sys4);
title('step response of a second order system for R=31(addition of pole at -5*31)');
%%addition of zero at -31
z=[-31];
p=[a b];
k=1000;
sys5=zpk(z,p,k);
figure(5);
step(sys5);
title('step response of a second order system for R=31(addition of zero at -31)');
%%addition of zero at -1/31
z=[-1/31];
p=[a b];
k=1000;
sys6=zpk(z,p,k);
figure(6);
step(sys6);
title('step response of a second order system for R=31(addition of zero at -1/31)');
%%addition of zero at -5*31
z=[-5*31];
p=[a b];
k=1000;
sys7=zpk(z,p,k);
figure(7);
step(sys7);
title('step response of a second order system for R=31(addition of zero at -5*31)');
%%addition of zero at 1/31
z=[1/31];
p=[a b];
k=1000;
sys8=zpk(z,p,k);
figure(8);
step(sys8);
title('step response of a second order system for R=31(addition of zero at 1/31)');
%%addition of zero at 5*31
z=[5*31];
p=[a b];
k=1000;
sys9=zpk(z,p,k);
figure(9);
step(sys9);
title('step response of a second order system for R=31(addition of zero at 5*31)');
%%effect of adding poles on second order system
%for pole pairs a=-1/31+1/31i and b=-1/31-1/31i
a=-1/31+1/31i;
b=-1/31-1/31i;
z=[];
p=[a b];
k=1000;
sys1=zpk(z,p,k);
figure(10);
step(sys1);
title('step response of a second order system for R=5*31');
%%addition of pole at -31
z=[];
p=[a b -31];
k=1000;
sys2=zpk(z,p,k);
figure(11);
step(sys2);
title('step response of a second order system for R=5*31(addition of pole at -31)');
%%addition of pole at -1/31
z=[];
p=[a b -1/31];
k=1000;
sys3=zpk(z,p,k);
figure(12);
step(sys3);
title('step response of a second order system for R=5*31(addition of pole at -1/31)');
%%addition of pole at -5*31
z=[];
p=[a b -5*31];
k=1000;
sys4=zpk(z,p,k);
figure(13);
step(sys4);
title('step response of a second order system for R=5*31(addition of pole at -5*31)');
%%addition of zero at -31
z=[-31];
p=[a b];
k=1000;
sys5=zpk(z,p,k);
figure(14);
step(sys5);
title('step response of a second order system for R=5*31(addition of zero at -31)');
%%addition of zero at -1/31
z=[-1/31];
p=[a b];
k=1000;
sys6=zpk(z,p,k);
figure(15);
step(sys6);
title('step response of a second order system for R=5*31(addition of zero at -1/31)');
%%addition of zero at -5*31
z=[-5*31];
p=[a b];
k=1000;
sys7=zpk(z,p,k);
figure(16);
step(sys7);
title('step response of a second order system for R=5*31(addition of zero at -5*31)');
%%addition of zero at 1/31
z=[1/31];
p=[a b];
k=1000;
sys8=zpk(z,p,k);
figure(17);
step(sys8);
title('step response of a second order system for R=5*31(addition of zero at 1/31)');
%%addition of zero at 5*31
z=[5*31];
p=[a b];
k=1000;
sys9=zpk(z,p,k);
figure(18);
step(sys9);
title('step response of a second order system for R=5*31(addition of zero at 5*31)');
%%effect of adding poles on second order system
%for pole pairs a=-5*31+5*31i and b=-5*31-5*31i
a=-5*31+5*31i;
b=-5*31-5*31i;
z=[];
p=[a b];
k=1000;
sys1=zpk(z,p,k);
figure(19);
step(sys1);
title('step response of a second order system for R=5*31');
%%addition of pole at -31
z=[];
p=[a b -31];
k=1000;
sys2=zpk(z,p,k);
figure(20);
step(sys2);
title('step response of a second order system for R=5*31(addition of pole at -31)');
%%addition of pole at -1/31
z=[];
p=[a b -1/31];
k=1000;
sys3=zpk(z,p,k);
figure(21);
step(sys3);
title('step response of a second order system for R=5*31(addition of pole at -1/31)');
%%addition of pole at -5*31
z=[];
p=[a b -5*31];
k=1000;
sys4=zpk(z,p,k);
figure(22);
step(sys4);
title('step response of a second order system for R=5*31(addition of pole at -5*31)');
%%addition of zero at -31
z=[-31];
p=[a b];
k=1000;
sys5=zpk(z,p,k);
figure(23);
step(sys5);
title('step response of a second order system for R=5*31(addition of zero at -31)');
%%addition of zero at -1/31
z=[-1/31];
p=[a b];
k=1000;
sys6=zpk(z,p,k);
figure(24);
step(sys6);
title('step response of a second order system for R=5*31(addition of zero at -1/31)');
%%addition of zero at -5*31
z=[-5*31];
p=[a b];
k=1000;
sys7=zpk(z,p,k);
figure(25);
step(sys7);
title('step response of a second order system for R=5*31(addition of zero at -5*31)');
%%addition of zero at 1/31
z=[1/31];
p=[a b];
k=1000;
sys8=zpk(z,p,k);
figure(26);
step(sys8);
title('step response of a second order system for R=5*31(addition of zero at 1/31)');
%%addition of zero at 5*31
z=[5*31];
p=[a b];
k=1000;
sys9=zpk(z,p,k);
figure(27);
step(sys9);
title('step response of a second order system for R=5*31(addition of zero at 5*31)');