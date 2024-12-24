function w=velocity(output, theta, input, pos_output)
phi2 = theta;
r2 = input(1);
r4 = input(2);
r5 = input(3);
r6 = input(4);
w2 = input(5);

r3 = pos_output(1);
phi3 = pos_output(2);
phi5 = pos_output(3);
phi6 = pos_output(4); 

r3dot = output(1);
w3 = output(2);
w5 = output(3);
w6 = output(4);

w=[w2*r2*sind(phi2) + w3*r3*sind(phi3) - r3dot*cosd(phi3);
   w2*r2*cosd(phi2) + w3*r3*cosd(phi3) + r3dot*sind(phi3);
   w3*r4*sind(phi3) - w5*r5*sind(phi5) - w6*r6*sind(phi6);
   w3*r4*cosd(phi3) - w5*r5*cosd(phi5) - w6*r6*cosd(phi6)];

end