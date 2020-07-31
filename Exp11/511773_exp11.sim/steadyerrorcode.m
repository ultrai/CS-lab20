%type 0
num = [1];
den = [1 1 4]
g = tf (num,den)
t = feedback(g,1)
step(t,'r')
title('type 0 step response')
%type 1
num = [1];
den = [0 1 1 4]
g = tf (num,den)
t = feedback(g,1)
step(t,'r')
title('type 1 step response')
%type 2
num = [1];
den = [0 0 1 1 4]
g = tf (num,den)
t = feedback(g,1)
step(t,'r')
title('type 2 step response')