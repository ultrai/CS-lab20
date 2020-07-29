% Time Response of a Second Order System
wn = input("Enter natural frequency : ") % Given 5
d = input("Enter damping factor : ") % Given 0.5

sys = tf([wn*wn], [1 2*d*wn wn*wn])
step(sys)