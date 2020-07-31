%%13-B Effect of addition on closed loop poles
sys = tf([1],[1 3 6])
l = [-1 -5 -10 -20]
for q=1:4
    sys_new = tf([1], [1 -l(q)])*sys
    subplot(2,2,q)
    step(sys_new)
    stepinfo(sys_new)
end