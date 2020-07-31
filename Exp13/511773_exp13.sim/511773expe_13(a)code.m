sys1=tf([1],[1 2 1 0]);
sys2=feedback(sys1,1,-1)
figure(1)
margin(sys1)
[Gm,Pm,Wcg,Wcp]=margin(sys1)
figure(2)
step(sys2)
T=stepinfo(sys2)