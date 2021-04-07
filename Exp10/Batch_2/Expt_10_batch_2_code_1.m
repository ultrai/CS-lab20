numG1=[1]; denG1=[1 0];
G1=tf(numG1,denG1);
numG2=[1]; denG2=[1 0];
G2=tf(numG1,denG2);
numG3=[1]; denG3=[1 0];
G3=tf(numG3,denG3);
numG4=[1]; denG4=[1 0];
G4=tf(numG4,denG4);
numH1=[1];denH1=[1];
H1=tf(numH1,denH1);
numH2=[1];denH2=[1];
H2=tf(numH2,denH2);
numH3=[1];denH3=[1];
H3=tf(numH3,denH3);

sys1=series(G3,G4)
sys2=feedback(sys1,H1,1)
sys3=series(sys2,G2)
sys4=feedback(sys3,H2,-1)
sys5=series(sys4,G4)
sys=feedback(sys5,H3,-1)