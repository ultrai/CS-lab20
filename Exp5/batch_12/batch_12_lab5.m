s = tf('s');
t=0:0.01:30;
%G1
    g1 = 1/((s+1)*(s+2));
    
    %open loop
    figure('Name','open loop response of G1','NumberTitle','off');
    step(g1,t);
    title('open loop response of G1');
    
    %unity -ve fb
    g11 = feedback(g1,1);
    figure('Name','unity -ve fb of G1','NumberTitle','off');
    step(g11,t);
    title('unity -ve fb of G1');
    
    %unity +ve fb
    g11 = feedback(g1,-1);
    figure('Name','unity +ve fb of G1','NumberTitle','off');
    step(g11,t);
    title('unity +ve fb of G1');
    
    %pole at -1 of fb
    g11 = feedback(g1,1/(s+1));
    figure('Name','pole at -1 of fb of G1','NumberTitle','off');
    step(g11,t);
    title('pole at -1 of fb of G1');
    
    %zero at -1 of fb
    g11 = feedback(g1,(s+1));
    figure('Name','zero at -1 of fb of G1','NumberTitle','off');
    step(g11,t);
    title('zero at -1 of fb of G1');
    
%G2
    g2 = 1/((s-1)*(s+2));
    
    %open loop
    figure('Name','open loop response of G2','NumberTitle','off');
    step(g2,t);
    title('open loop response of G2');
    
    %unity -ve fb
    g21 = feedback(g2,1);
    figure('Name','unity -ve fb of G2','NumberTitle','off');
    step(g21,t);
    title('unity -ve fb of G2');
    
    %unity +ve fb
    g21 = feedback(g2,-1);
    figure('Name','unity +ve fb of G2','NumberTitle','off');
    step(g21,t);
    title('unity +ve fb of G2');
    
    %pole at -1 of fb
    g21 = feedback(g2,1/(s+1));
    figure('Name','pole at -1 of fb of G2','NumberTitle','off');
    step(g21,t);
    title('pole at -1 of fb of G2');
    
    %zero at -1 of fb
    g21 = feedback(g2,(s+1));
    figure('Name','zero at -1 of fb of G2','NumberTitle','off');
    step(g21,t);
    title('zero at -1 of fb of G2');
    
%G3
    g3 = 1/(10*s);
    T = 0:100;
    
    %open loop
    figure('Name','open loop response of G3','NumberTitle','off');
    step(g3,T);
    title('open loop response of G3');
    
    %unity -ve fb
    g31 = feedback(g3,1);
    figure('Name','unity -ve fb of G3','NumberTitle','off');
    step(g31,T);
    title('unity -ve fb of G3');
    
    %unity +ve fb
    g31 = feedback(g3,-1);
    figure('Name','unity +ve fb of G3','NumberTitle','off');
    step(g31,T);
    title('unity +ve fb of G3');
    
    %pole at -1 of fb
    g31 = feedback(g3,1/(s+1));
    figure('Name','pole at -1 of fb of G3','NumberTitle','off');
    step(g31,T);
    title('pole at -1 of fb of G3');
    
    %zero at -1 of fb
    g31 = feedback(g3,(s+1));
    figure('Name','zero at -1 of fb of G3','NumberTitle','off');
    step(g31,T);
    title('zero at -1 of fb of G3');
    
    