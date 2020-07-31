
G = tf([1], [1 3])
step(G)
grid


w = 25
d = .5

sys = tf([wn*wn], [1 2*d*w w*w])
step(sys)
