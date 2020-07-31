% one pole left half of s plane for second ordermfar from imag axis
num= 10;
den=[1 1];
Sb=tf(num,den);
figure(1)
step(Sb)
% one pole right half of s plane for second ordermfar from imag axis
num= 10;
den=[1 -1];
Sb=tf(num,den);
figure(1)
step(Sb)
% one pole right half of s plane for second ordermfar from imag axis
num= 10;
den=[1 -3 2];
Sb=tf(num,den);
figure(1)
step(Sb)