close
clc

%position analysis
r1=67; r2=20; r4=90; r5=70; r6=120; r7=163.15; phi7=155.75;
pos_input = [r1, r2, r4, r5, r6, r7, phi7];
options = optimset('display', 'off');
pos_output = zeros(361, 4);
phi2 = zeros(361, 4);
for i=0:1:360
    phi2(i+1)=i;
    pos_output(i+1, :) = fsolve(@position,[1 1 1 1],options,i,pos_input);
end

%velocity analysis
w2 = 2;
vel_input = [r2,r4,r5,r6,w2];
vel_output = zeros(361, 4);
for i=0:1:360
    vel_output(i+1,:) = fsolve(@velocity,[1 1 1 1],options, i, vel_input, pos_output(i+1, :));
end

%acceleration analysis
acc_input = vel_input;
acc_output = zeros(361, 4);
for i=0:1:360
    acc_output(i+1,:) = fsolve(@acceleration,[1 1 1 1], options, i, acc_input, pos_output(i+1, :), vel_output(i+1, :));
end

All_Graphs(phi2', pos_output ,vel_output, acc_output);