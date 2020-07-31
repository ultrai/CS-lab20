%%additon of open loop poles
   clc;
   p=[0 -1];
   z=[];
   sys=zpk(z,p,20)
   zpk(sys)
   figure(1)
   rlocus(sys)
   grid; 
   title('Root Locus Plot of 20/[s(s+1)]')
%%additon of open loop poles 2
   
   p=[0 -1 -3];
   z=[];
   sys=zpk(z,p,20)
   zpk(sys)
   figure(2)
   rlocus(sys)
   grid;
   title('Root Locus Plot of 20/[s(s+1)(s+3)]')
   
%%additon of open loop poles 3
   p=[0 -1 -3 -5];
   z=[];
   sys=zpk(z,p,20)
   zpk(sys)
   figure(3)
   rlocus(sys)
   grid;
   title('Root Locus Plot of 20/[s(s+1)(s+3)(s+5)]')
   
%%additon of open loop zeros 1
   p=[-1];
   z=[-3];
   sys=zpk(z,p,20)
   zpk(sys)
   figure(4)
   rlocus(sys)
   grid;  
   title('Root Locus Plot of 20(s+3)/[s(s+1)]')

   
%%additon of open loop zeros 2
   p=[-1 -3 -5];
   z=[-3 -5];
   sys=zpk(z,p,20)
   zpk(sys)
   figure(5)
   rlocus(sys)
   grid;
   title('Root Locus Plot of 20(s+3)(s+5)/[s(s+1)(s+3)]')


