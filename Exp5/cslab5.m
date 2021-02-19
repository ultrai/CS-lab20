
clear;
n= input('enter a number: ');
switch n
    case 1
        
s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,0);
figure(1)
step(plant)
title('Step response of open loop system-a')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,0);
figure(2)
step(plant)
title('Step response of open loop system-b')
            
s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,0);
figure(3)
step(plant)
title('Step response of open loop system-c')
    case 2
        
s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,1,1);
figure(1)
step(plant)
title('Step response of closed loop system with unity positive feedback-a')

s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,1,-1);
figure(2)
step(plant)
title('Step response of closed loop system with unity negative feedback-a')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,1,1);
figure(3)
step(plant)
title('Step response of closed loop system with unity positive feedback-b')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,1,-1);
figure(4)
step(plant)
title('Step response of closed loop system with unity negative feedback-b')

s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,1,1);
figure(5)
step(plant)
title('Step response of closed loop system with unity positive feedback-c')

s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,1,-1);
figure(6)
step(plant)
title('Step response of closed loop system with unity negative feedback-c')
    case 3
 s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,1/(s+1),-1);
figure(1)
step(plant)
title('Step response of closed loop system with pole added to negative feedback-a')
        
s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,1/(s+1),1);
figure(2)
step(plant)
title('Step response of closed loop system with pole added to positive feedback-a')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,1/(s+1),1);
figure(3)
step(plant)
title('Step response of closed loop system with pole added positive feedback-b')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,1/(s+1),-1);
figure(4)
step(plant)
title('Step response of closed loop system with pole added negative feedback-b')


s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,1/(s+1),1);
figure(5)
step(plant)
title('Step response of closed loop system with pole added positive feedback-c')

s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,1/(s+1),-1);
figure(6)
step(plant)
title('Step response of closed loop system with pole added negative feedback-c')

    case 4
        s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,1*(s+1),-1);
figure(1)
step(plant)
title('Step response of closed loop system with zero added to negative feedback-a')
        
s=tf('s');
k=1;
G=(1)/((s+1)*(s+2));
plant = feedback(G*k,1*(s+1),1);
figure(2)
step(plant)
title('Step response of closed loop system with zero added to positive feedback-a')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,1*(s+1),1);
figure(3)
step(plant)
title('Step response of closed loop system with zero added positive feedback-b')

s=tf('s');
k=1;
G=(1)/((s-1)*(s+2));
plant = feedback(G*k,1*(s+1),-1);
figure(4)
step(plant)
title('Step response of closed loop system with zero added negative feedback-b')

s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,1*(s+1),1);
figure(5)
step(plant)
title('Step response of closed loop system with zero added positive feedback-c')

s=tf('s');
k=1;
G=(1)/(10*s);
plant = feedback(G*k,1*(s+1),-1);
figure(6)
step(plant)
title('Step response of closed loop system with zero added negative feedback-c')

end
        


        
