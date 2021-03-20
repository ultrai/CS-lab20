%step response for First order system for pole at s=-1/R, R=44
a=1/44;
s=tf('s');
G=(1)/(s+a);
figure(1)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-1/R, R=44.")

%step response for First order system fo pole at s=-R, R=44.
a=44;
s=tf('s');
G=(1)/(s+a);
figure(2)
step(G)
stepinfo(G)
title("Effect on step response for First order system for pole at s=-R, R=44.")

%step response for First order system fo pole at s=-5R, R=44.
a=5*44;
s=tf('s');
G=(1)/(s+a);
figure(3)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-5R, R=44.")

%step response for First order system fo pole at s=-R,zero at s=-1/R, R=44
a=44;
s=tf('s');
G=(a*s+1)/(s+a);
figure(4)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-R,zero at s=-1/R, R=44.")

%step response for First order system fo pole at s=-R,zero at s=-R, R=44
a=44;
s=tf('s');
G=(s/a+1)/(s+a);
figure(5)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-R,zero at s=-R, R=44.")

%step response for First order system fo pole at s=-R,zero at s=-5R, R=44
a=44;
s=tf('s');
G=(s/(5*a)+1)/(s+a);
figure(6)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-R,zero at s=-5R, R=44.")

%step response for First order system fo pole at s=-R,zero at s=1/R, R=44
a=44;
s=tf('s');
G=(-a*s+1)/(s+a);
figure(7)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-R,zero at s=1/R, R=44.")

%step response for First order system fo pole at s=-R,zero at s=5R, R=44
a=44;
s=tf('s');
G=(-s/(5*a)+1)/(s+a);
figure(8)
step(G)
stepinfo(G)
title("Effect on step response for First order system fo pole at s=-R,zero at s=5R, R=44.")