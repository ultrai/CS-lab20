%%%%  G(s)=1/(s+1)*(s+2) %%%%
g=tf(1,[1 1])*tf(1,[1 2]);
tf_openloop=feedback(g,0)
figure(1);
step(tf_openloop);
title('open loop response of G(s)=1/(s+1)*(s+2)')

%%%%  G(s)=1/(s-1)*(s+2) %%%%
g1=tf(1,[1 -1])*tf(1,[1 2]);
tf1_openloop=feedback(g1,0)
figure(2);
step(tf1_openloop);
title('open loop response of G(s)=1/(s-1)*(s+2)')

%%%%  G(s)=1/10*s %%%%
g2=tf(1,[1 0])*tf(1,[0 10]);
tf2_openloop=feedback(g2,0)
figure(3);
step(tf2_openloop);
title('open loop response of G(s)=1/10*s')