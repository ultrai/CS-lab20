%closed loop response
num=1;
den=[1 10 21];
plant=tf(num,den);
figure('Name','closed loop response','NumberTitle','off');
step(plant);

%with Kp closed loop
kp=300;
contr=kp;
sys_cl=feedback(contr*plant,1);
t=0:0.01:2;
figure('Name','with Kp closed loop','NumberTitle','off');
step(sys_cl,t)

%with Kp,Kd closed loop
kp=300;
kd=10;
contr= tf([kd kp],1);
sys_cl=feedback(contr*plant,1);
t=0:0.01:2;
figure('Name','with Kp,Kd closed loop','NumberTitle','off');
step(sys_cl,t)

%with Kp,Ki closed loop
ki=30;
kp=70;
contr= tf([kp ki],[1 0]);
sys_cl=feedback(contr*plant,1);
t=0:0.01:2;
figure('Name','with Kp,Ki closed loop','NumberTitle','off');
step(sys_cl,t)

%with Kp,Ki,Kd closed loop
kp=350;
ki=300;
kd=50;
contr= tf([kd kp ki],[1 0]);
sys_cl=feedback(contr*plant,1);
t=0:0.01:2;
figure('Name','with Kp,Ki,Kd closed loop','NumberTitle','off');
step(sys_cl,t)

%PID controller using ziegler nicholas method

% Obtain step response of the system
[y,t] = step(plant);

% Obtain Inflection point and Draw Tangent
yp = diff(y);
ypp = diff(y,2);
% Find the root using FZERO
t_infl = fzero(@(T) interp1(t(2:end-1),ypp,T,'linear','extrap'),0);
y_infl = interp1(t,y,t_infl,'linear');

% Draw Tangent at inflection point
h = mean(diff(t));
dy = gradient(y, h);
[~,idx] = max(dy);
b = [t([idx-1,idx+1]) ones(2,1)] \ y([idx-1,idx+1]);            % Regression Line Around Maximum Derivative
tv = [-b(2)/b(1); (1-b(2))/b(1)];                               % Independent Variable Range For Tangent Line Plot
f = [tv ones(2,1)] * b;                                         % Calculate Tangent Line

%finding T and L
L = tv(1);
T = tv(2) - tv(1);

% PID parameters
a = L/T;
Kp = 1.2/a;
Ti = 2*L;
Td = L/2;

s = tf('s');
cont = Kp + Kp/(s*Ti) + Kp*Td*s;

cl_sys = feedback(cont*plant,1);
t = 0:0.01:3;
figure('Name','PID controller using Ziegler Nicholas method','NumberTitle','off');
step(cl_sys,t);