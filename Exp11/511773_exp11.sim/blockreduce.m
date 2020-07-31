 s = tf('s');
 G1 = 1/(s+1);
 G2 = 2/((s^2) + (5*s) + 100);
 G3 = 10/((2*s) +1);
 G4 = 100/(s+1);G1.InputName = 'r';
 G1.OutputName = 'ug1';
 G2.InputName = 'e';
 G2.OutputName = 'ug2';
 G3.InputName = 'ym';
 G3.OutputName = 'y';
 G4.InputName = 'u';
 G4.OutputName = 'ym';

 sum1 = sumblk('e','r','y','+-');
  sum2 = sumblk('u','ug1','ug2'); % u = ug1 + ug2
 OutputTF = connect(G1,G2,G4,G3,sum1,sum2,'r','ym');
