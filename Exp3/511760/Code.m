R = 1000
L = 0.5
C = 0.5*10^-6

sys = tf([1],[L*C R*C 1])
bode(sys)
grid
