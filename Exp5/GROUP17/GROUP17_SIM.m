clear;
n= input('enter a number: '); 
switch n
    case 1
        k_dc = 1;
w=10;
e=.5;
u = 1;

s = tf('s');
G = (k_dc*w*w)/(s^2+(2*e*w*s)+(w*w));

wb=bandwidth(G);

bode(G)

title('Step response of second order system with e=.5 and w=10"')
    case 2
        k_dc = 1;
w=12^(1/2);
e=7/(2*(12^(1/2)));
u = 1;

s = tf('s');
G = (k_dc*w*w)/(s^2+(2*e*w*s)+(w*w))

wb=bandwidth(G)

bode(G)

title('Step response of second order system with e=.5 and w=3"')
    case 3
k_dc = 1;
w=3;
e=.5;
u = 1;

s = tf('s');
G = (k_dc*w*w)/(s^2+(2*e*w*s)+(w*w))

wb=bandwidth(G)

bode(G)

title('Step response of second order system with e=.5 and w=3"')
    case 4
        k_dc = 1;
w=5;
e=1;
u = 1;

s = tf('s');
G = (k_dc*w*w)/(s^2+(2*e*w*s)+(w*w))

wb=bandwidth(G);

bode(G)

title('Step response of second order system with e=1 and w=5"')


    case 5
        k_dc = 1;
w=5;
e=0.4;
u = 1;

s = tf('s');
G = (k_dc*w*w)/(s^2+(2*e*w*s)+(w*w));

wb=bandwidth(G);

bode(G)

title('Step response of second order system with e=.4 and w=5"')
    case 6
        k_dc = 1;
w=5;
e=0;
u = 1;

s = tf('s');
G = (k_dc*w*w)/(s^2+(2*e*w*s)+(w*w))

wb=bandwidth(G);

bode(G)

title('Step response of second order system with e=0 and w=5"')
end
        