% Effect of addition on closed loop poles
sys = tf([1], [1 3 6])
p = [-1 -5 -10 -20]
for i=1:4
    sys_new = tf([1], [1 -p(i)])*sys
    subplot(2, 2, i)
    step(sys_new)
    stepinfo(sys_new)
end