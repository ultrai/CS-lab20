%%Evaluation of addition of poles and zeros

%%Time Response of a Second order System
z=[]
p=[-10+30i -10-30i]
k=1000
G=zpk(z,p,k)
figure(1)
step(G)

%%Evaluation of addition of poles
%%Addition of pole at -1
z=[]
p=[-10+30i -10-30i -1]
k=1000
G=zpk(z,p,k)
figure(2)
step(G)
%%Addition of pole at -10
z=[]
p=[-10+30i -10-30i -10]
k=1000
G=zpk(z,p,k)
figure(3)
step(G)
%%Addition of pole at -100
z=[]
p=[-10+30i -10-30i -100]
k=1000
G=zpk(z,p,k)
figure(4)
step(G)
%%Evaluation of addition of zeros
%%Addition of zero at -1
z=[-1]
p=[-10+30i -10-30i]
k=1000
G=zpk(z,p,k)
figure(5)
step(G)
%%Addition of zero at -10
z=[-10]
p=[-10+30i -10-30i]
k=1000
G=zpk(z,p,k)
figure(6)
step(G)
%%Addition of zero at -100
z=[-100]
p=[-10+30i -10-30i]
k=1000
G=zpk(z,p,k)
figure(7)
step(G)