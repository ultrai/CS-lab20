numerator=[345.7]
denominator=[1 20.8 345.7]
sys = tf(numerator,denominator)
bode(sys)
bandwidth(sys)
[gpeak,fpeak] = getPeakGain(sys);
gpeak_dB = mag2db(gpeak)
grid