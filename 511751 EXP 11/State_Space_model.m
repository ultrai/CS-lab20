clc;
%Transfer function to state apace model
    
     num=input('Enter the numerator coefficients of transfer function as a row matrix');
     den=input('Enter the denominator coefficients of transfer function as a row matrix');
      
       g=tf(num,den)
       
       [A,B,C,D]=tf2ss(num,den)
       
       
%State Space Model to transfer function
         
       a=input(' Enter the system matrix values as a matrix');
       b=input(' Enter the input matrix values as a matrix');
       c=input(' Enter the output matrix values as a matrix');
       d=input(' Enter the transmission matrix values as a matrix');
       e=input(' Enter the number of inputs to system');
       
       [num1,den1]=ss2tf(a,b,c,d,e);
       
       g=tf(num1,den1)