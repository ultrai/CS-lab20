% Time response of a First Order System
G = tf([1], [1 3])
step(G)
grid

% Time Response of a Second Order System
wn = input("Enter natural frequency : ") % Given as 5
d = input("Enter damping factor : ") % 0.5 for underdamped and 2 for overdamped

sys = tf([wn*wn], [1 2*d*wn wn*wn])
step(sys)