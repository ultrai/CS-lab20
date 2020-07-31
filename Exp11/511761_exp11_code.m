%%Block Digram Reduction
G1=tf([1],[1 10])
G2=tf([1],[1 1])
G2=tf([1 0 1],[1 4 4])
G2=tf([1 1],[1 6])
H1=tf([1 1],[1 2])
H2=tf([2],[1])
H3=tf([1],[1])

H2=H2/G4
sys=feedback(series(G3,G4),H1,+1)
sys=feedback(series(G2,sys),H2,-1)
sys=feedback(series(G1,sys),H3,-1)