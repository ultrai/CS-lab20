

a= input ( 'Enter the values of a matrix' );
b= input ( 'Enter the values of b matrix');
c= input ('Enter the values of c matrix');
d= input ('Enter the values of d matrix');
[num, den] = ss2tf(a, b, c, d,1)
Transfer_function = tf (num , den);
