s = tf('s')

g_p = 1/((s-1)*(s+2))

figure(1)
step(g_p)
stepinfo(g_p)

figure(2)
step(feedback(g_p,1))
stepinfo(feedback(g_p,1))

figure(3)
step(feedback(g_p,-1))
stepinfo(feedback(g_p,-1))

figure(4)
step(feedback(g_p,1/(s+1)))
stepinfo(feedback(g_p,1/(s+1)))

figure(5)
step(feedback(g_p,(s+1)))
stepinfo(feedback(g_p,(s+1)))

figure(6)
step(feedback(g_p,(s-1)))
stepinfo(feedback(g_p,(s-1)))