%%13-B Effect of addition on closed loop zeros
sys1 = tf([1],[1 3 6])
z = [-1 -5 -10 -20]
for j=1:4
    sys1_new = tf([1 -z(j)],[1])*sys1
    subplot(2,2,i)
    step(sys1_new)
    stepinfo(sys1_new)
end