%%%%  G(s)=1/(s+1)*(s+2) %%%%
g=tf(1,[1 1])*tf(1,[1 2])*tf(1,[1 1]);
tf_closeloop=feedback(g,-1)%% closeloop with positive feedback %%
figure(1);
step(tf_closeloop);
title('closed loop response of G(s)=1/(s+1)*(s+2)with unity positive feedback and pole at -1')

tf_closeloop1=feedback(g,1)%% closeloop with negative feedback %%
figure(2);
step(tf_closeloop1);
title('closed loop response of G(s)=1/(s+1)*(s+2)with unity negative feedback and pole at -1')

%%%%  G(s)=1/(s-1)*(s+2) %%%%
g1=tf(1,[1 -1])*tf(1,[1 2])*tf(1,[1 1]);
tf1_closeloop=feedback(g1,-1)%% closeloop with positive feedback %%
figure(3);
step(tf1_closeloop);
title('closed loop response of G(s)=1/(s-1)*(s+2)with unity positive feedback and pole at -1')

tf1_closeloop1=feedback(g1,1)%% closeloop with negative feedback %%
figure(4);
step(tf1_closeloop1);
title('closed loop response of G(s)=1/(s-1)*(s+2)with unity negative feedback and pole at -1')

%%%%  G(s)=1/10*s %%%%
g2=tf(1,[1 0])*tf(1,[0 10])*tf(1,[1 1]);
tf2_closeloop=feedback(g2,-1)%% closeloop with positive feedback %%
figure(5);
step(tf2_closeloop);
title('closed loop response of G(s)=1/10*s with unity positive feedback and pole at -1')

tf2_closeloop1=feedback(g2,1)%% closeloop with negative feedback %%
figure(6);
step(tf2_closeloop1);
title('closed loop response of G(s)=1/10*s with unity negative feedback and pole at -1')
