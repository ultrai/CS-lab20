%%Frequency Response of Second Order System
n=[356]
d=[1 22 356]
G=tf(n,d)
figure(1)
bode(G)