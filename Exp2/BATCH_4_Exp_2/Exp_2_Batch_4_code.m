%%%%% frequency response of transfer function tf=100/(s^2+10s+100) %%%%%
oltf1=tf([100],[1 10 0])
sys1=tf([100],[1 10 100])
[mr,wr]=getPeakGain(sys1)
wb=bandwidth(sys1)
figure(1)
bode(oltf1)
margin(oltf1)


%%%%% frequency response of transfer function tf=12/(s+4)*(s+3) %%%%%
oltf2=tf([12],[1 7 0])
sys2=tf([12],[1 7 12])
[mr,wr]=getPeakGain(sys2)
wb=bandwidth(sys2)
figure(2)
bode(oltf2)
margin(oltf2)