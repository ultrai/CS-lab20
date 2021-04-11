num1 = 10;
den1=[1 1 0];
gf1=tf(num1,den1);
bode(gf1),grid
figure(1)

num2 = [3.85 10];
den2=[0.162 1.162 1 0];
lead1=tf(num2,den2);
bode(lead1),grid
figure(2)

num3 = 40;
den3=[1 6 5 0];
gf2=tf(num3,den3);
bode(gf2),grid
figure(3)


num4 =[40 8];
den4=[8 48.2 41.2 0];
lag1=tf(num4,den4);
bode(lag1),grid
figure(4)


num5 = 25;
den5=[0.05 0.6 1 0];
gf3=tf(num5,den5);
bode(gf3),grid
figure(5)


num6 = [37.3 68.65 25];
den6=[0.0744 1.69745 11.1938 16.693 1 0];
laglead=tf(num6,den6);
bode(laglead),grid
figure(6)