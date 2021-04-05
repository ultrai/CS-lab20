%%effect of adding poles and zeroes on first order system
a=-31;
z=[];
p=[a];
k=1000;
sys1=zpk(z,p,k);
figure(1);
step(sys1);
title('step response of a first order system for R=31');
%%addition of pole at -31
z=[];
p=[a -31];
k=1000;
sys2=zpk(z,p,k);
figure(2);
step(sys2);
title('step response of a first order system for R=31(addition of pole at -31)');
%%addition of pole at -1/31
z=[];
p=[a -1/31];
k=1000;
sys3=zpk(z,p,k);
figure(3);
step(sys3);
title('step response of a first order system for R=31(addition of pole at -1/31)');
%%addition of pole at -5*31
z=[];
p=[a -5*31];
k=1000;
sys4=zpk(z,p,k);
figure(4);
step(sys4);
title('step response of a first order system for R=31(addition of pole at -31)');
%%addition of zero at -31
z=[-31];
p=[a];
k=1000;
sys5=zpk(z,p,k);
figure(5);
step(sys5);
title('step response of a first order system for R=31(addition of zero at -31)');
%%addition of zero at -1/31
z=[-1/31];
p=[a];
k=1000;
sys6=zpk(z,p,k);
figure(6);
step(sys6);
title('step response of a first order system for R=31(addition of zero at -1/31)');
%%addition of zero at -5*31
z=[-5*31];
p=[a];
k=1000;
sys7=zpk(z,p,k);
figure(7);
step(sys7);
title('step response of a first order system for R=31(addition of zero at -5*31)');
%%addition of zero at 31
z=[31];
p=[a];
k=1000;
sys8=zpk(z,p,k);
figure(8);
step(sys8);
title('step response of a first order system for R=31(addition of zero at 31)');
%%addition of zero at 5*31
z=[5*31];
p=[a];
k=1000;
sys9=zpk(z,p,k);
figure(9);
step(sys9);
title('step response of a first order system for R=31(addition of zero at 5*31)');