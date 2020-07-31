sys=tf([1],[1 3 6])
poles=[-1 -5 -10 -20]
for i=1:4
    sys1=tf([1],[1 -poles(i)])*sys
    subplot(2,2,i)
    step(sys1)
    stepinfo(sys1)