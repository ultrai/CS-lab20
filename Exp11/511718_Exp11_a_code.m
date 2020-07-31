% Experiment 11 - Block Diagram Reduction

 s = tf('s');
 G1 = 1/(s+1);
 G2 = 2/((s^2) + (5*s) + 100);
 G3 = 10/((2*s) +1);
 G4 = 100/(s+1);
 %--------------------------------------------------------------------------
 % Now we are required to define all the blocks input and output. As shown
 % below. Using these defined input output we will be using sumblk ---------
 G1.InputName = 'r';
 G1.OutputName = 'ug1';
 G2.InputName = 'e';
 G2.OutputName = 'ug2';
 G3.InputName = 'ym';
 G3.OutputName='y';
 G4.InputName = 'u';
 G4.OutputName = 'ym';
 %--------------------------------------------------------------------------
 % Note: Now we are required to relate all these inputs and outputs. Why??
 % Because there are two summing points in our block diagram. This way
 % matlab will be able to relate the transfer fuction with each other.
 % You can notice ym is our output and its not attached to any summing point
 % hence it is not included in the summing.
 %--------------------------------------------------------------------------
 sum1 = sumblk('e','r','y','+-'); % e = r - y
 sum2 = sumblk('u','ug1','ug2'); % u = ug1 + ug2
 % Rest is pretty simple ---------------------------------------------------
 % we have to find the relationship between r and ym for our output transfer
 % function. ---------------------------------------------------------------
 OutputTF = connect(G1,G2,G4,G3,sum1,sum2,'r','ym');
 %--------------------------------------------------------------------------
 % Calculating responses. Responses taken into account are step and
 % ramp. Others can also be included. A generalised form has been given
 % below.
 %--------------------------------------------------------------------------
  % First Impulse -----------------------------------------------------------
 inputTime = [0:.1:10];
 [outputResp, time] = impulse(OutputTF, inputTime);
 subplot(3,1,1);
 plot(time, outputResp);
 title('Impulse Response');
 xlabel('Time -->');
 ylabel('Magnitude -->');
 % Step Response -----------------------------------------------------------
 inputTime = [0:.1:10];
 inputSignal = ones(size(inputTime));
 [outputResp, time] = step(OutputTF);%, inputSignal, inputTime);
 subplot(3,1,2);
 plot(time,outputResp);
 title('Step Response');
 xlabel('Time -->');
 ylabel('Magnitude -->');
 % Ramp Response -----------------------------------------------------------
 inputTime = [0:.1:10];
 inputSignal = 1*inputTime;
 [outputResp, time] = lsim(OutputTF, inputSignal, inputTime);
 subplot(3,1,3);
 plot(time,outputResp);
 title('Ramp Response');
 xlabel('Time -->');
 ylabel('Magnitude -->');