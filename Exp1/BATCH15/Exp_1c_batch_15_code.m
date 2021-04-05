%%pole at R
h1=zpk([],[-4+4i -4-4i],2500);
step(h1);
%%pole at 1/R
h1=zpk([],[-0.25+0.25i -0.25-0.25i],2500);
step(h1);
%%pole at 5R
h1=zpk([],[-20+20i -20-20i],2500);
step(h1)
%%zero at R
h1=tf([0 1 4],[1 50 2500]);
step(h1)
%%zero at 1/R
h1=tf([0 1 0.25],[1 50 2500]);
step(h1)
%%Zero at 5R
h1=tf([0 1 20],[1 50 2500]);
step(h1)
