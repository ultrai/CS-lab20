%% relationship betwen open loop and closed loop function
sys_open=tf([1],[1 2 1 0];
sys_closed=feedback(sys_open,1,-1);
figure(1);
margin(sys_open);
figure(2);
step(sys_closed);
S=stepinfo(sys_closed);
