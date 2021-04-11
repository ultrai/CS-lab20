%% Perform Symmetrical component analysis on voltages Va = 100/ Odeg,Vb = 33/ -100deg, Vc = 38/ 176.5deg 
clc;clear; 
% Provide the angle in degrees 
disp('Provide the abc Phase Components') 
Va=input('a phase magnitude: '); 
Va_ang = input('\na phase angle: '); 
Vb=input('\nb phase magnitude: '); 
Vb_ang=input('\nb phase angle: '); 
Vc=input('\nc phase magnitude: '); 
Vc_ang = input('\nc phase angle: '); 
VA = Va*exp(j*Va_ang*(pi/180)); 
VB = Vb*exp(j*Vb_ang*(pi/180)); 
VC = Vc*exp(j*Vc_ang*(pi/180)); 
% Sequence Transformation constant alpha = 1/ 120 degrees 
alpha = 1*exp(j*2*pi/3); 
V_ABC=[VA;VB;VC]; 
% Sequence Transformation from abc phase to 012 sequence 
ph_sym=(1/3)*[1 alpha alpha^2;1 alpha^2 alpha;1 1 1]*V_ABC; 
%Positive Sequence of ABC components 
Vapos_mag = abs(ph_sym(1)); 
Vapos_ang = angle(ph_sym(1))*180/pi; 
[r,i] = pol2cart(Vapos_ang*pi/180,Vapos_mag); 
Vbpos = (alpha^2)*complex(r,i); 
Vbpos_mag = abs(Vbpos); 
Vbpos_ang = angle(Vbpos)*180/pi; 
Vcpos = alpha*complex(r,i); 
Vcpos_mag = abs(Vcpos); 
Vcpos_ang = angle(Vcpos)*180/pi; 
%Negative Sequence Sequence 
Vaneg_mag = abs(ph_sym(2)); 
Vaneg_ang = angle(ph_sym(2))*180/pi; 
[r,i] = pol2cart(Vaneg_ang*pi/180,Vaneg_mag); 
Vbneg = (alpha)*complex(r,i); 
Vbneg_mag= abs(Vbneg); 
Vbneg_ang = angle(Vbneg)*180/pi; 
Vcneg = (alpha^2)*complex(r,i); 
Vcneg_mag = abs(Vcneg); 
Vcneg_ang = angle(Vcneg)*180/pi;
%Zero Sequence 
Vazero_mag = abs (ph_sym(3)); 
Vazero_ang = angle(ph_sym(3))*180/pi; 
Vbzero_mag=Vazero_mag;
Vbzero_ang=angle(ph_sym(3))*180/pi;
Vczero_mag=Vazero_mag;
Vczero_ang = angle(ph_sym(3))*180/pi; 
disp('The symmetrical components of the input phases are:')
disp('Sequence Magnitude Angle') 
disp('___') 
fprintf('Val\t%f\t%f',Vapos_mag, Vapos_ang); 
fprintf(' \nVa2\t%f\t%f',Vaneg_mag,Vaneg_ang); 
fprintf(' \nVa0\t%f\t%f\n',Vazero_mag, Vazero_ang); 
fprintf(' \nVb1\t%f\t%f',Vbpos_mag,Vbpos_ang); 
fprintf(' \nVb2\t%f\t%f',Vbneg_mag,Vbneg_ang); 
fprintf(' \nVb0\t%f\t%f\n',Vbzero_mag, Vbzero_ang); 
fprintf(' \nVc1\t%f\t%f',Vcpos_mag,Vcpos_ang); 
fprintf(' \nVc2\t%f\t%f',Vcneg_mag,Vcneg_ang); 
fprintf(' \nVc0\t%f\t%f\n',Vczero_mag,Vczero_ang); 
%% Transformation from Sequence components to abc phase components 
Seq_012=ph_sym; 
sym_ph = [1 1 1;alpha^2 alpha 1;alpha alpha^2 1]*Seq_012; 
%a phase component 
A_mag = abs (sym_ph(1)); 
A_ang = angle (sym_ph(1))*180/pi; 
%b phase component 
B_mag = abs (sym_ph(2)); 
B_ang = angle (sym_ph(2))*180/pi; 
%c phase component 
C_mag = abs(sym_ph(3));
C_ang = angle (sym_ph(3))*180/pi; 
disp('The phase components from the sequence components are:') 
disp('Phase Magnitude Angle') 
disp('___'  ) 
fprintf('a\t%f\t%f',A_mag,A_ang); 
fprintf(' \nb\t%f\t%f',B_mag, B_ang); 
fprintf('\nc\t%f\t%f\n',C_mag,C_ang);