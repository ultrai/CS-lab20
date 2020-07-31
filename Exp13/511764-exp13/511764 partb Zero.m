%%13-B Effect of Addition on Closed Loop Zeros
sys = tf([1],[1 3 6])
f = [-1 -5 -10 -20]
for q=1:4
    sys_new = tf([1 -f(q)],[1])*sys
    subplot(2,2,q)
    step(sys_new)
    stepinfo(sys_new)
end