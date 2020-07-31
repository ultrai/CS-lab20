%% Frequency Response of second order system
num = [356];
den = [1 22 356];
sys = tf (num , den) 
figure(1)
bode(sys)