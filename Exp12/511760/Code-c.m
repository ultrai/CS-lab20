z = []
p = [-0.5+i -0.5-i -1];

k = 1;
sys1=zpk(z,p,k);
step(sys1)
hold on

k = 2;
sys2=zpk(z,p,k);
step(sys2)
hold on

k = 3;
sys3=zpk(z,p,k);
step(sys3)
grid