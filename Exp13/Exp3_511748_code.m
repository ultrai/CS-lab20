
%% Frequency Response for obtaining stability
num = [100];
den = [1 20 100 0];
sys = tf (num , den) 
figure(1)
margin(sys)
%% Frequency Response of second order system
num = [356];
den = [1 22 356];
sys = tf (num , den) 
figure(2)
bode(sys)
%% Time Response of second order system
num = [356];
den = [1 22 356];
sys = tf (num , den) 
figure(3)
step(sys)