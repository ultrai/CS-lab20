%%%%   effect of open loop poles and zeroes on root locus %%%%%

sys=tf([36],[1 6 11 6])
figure(1)
zpk(sys)
rlocus(sys)
grid
title('root locus for given transfer function')

sys1=tf([36],[1 5 5 -5 -6])
figure(2)
zpk(sys1)
rlocus(sys1)
grid
title('root locus for adding pole at s=+1 to given transfer function')

sys2=tf([36],[1 7 17 17 6])
figure(3)
zpk(sys2)
rlocus(sys2)
grid
title('root locus for adding pole at s=-1 to given transfer function')

sys3=tf([36 -36],[1 6 11 6])
figure(4)
zpk(sys3)
rlocus(sys3)
grid
title('root locus for adding zero at s=+1 to given transfer function')

sys4=tf([36],[1 5 6])
figure(5)
zpk(sys4)
rlocus(sys4)
grid
title('root locus for adding zero at s=-1 given transfer function')