a=tf([37.3 68.65 25],[0.0744 1.69745 11.1938 16.693 1 0]);
bode(a),grid
figure(1)
b=tf([3.85 10],[0.162 1.162 1 0])
bode(b),grid
figure(2)
c=tf([40 8],[8 418.2 41.2 1 0])
bode(c),grid
figure(3)
d=tf([10],[1 1 0])
bode(d),grid
figure(4)
e=tf([8],[1 6 5 0])
bode(e),grid
figure(5)
f=tf([25],[0.05 0.6 1 0])
bode(f),grid
figure(6)
