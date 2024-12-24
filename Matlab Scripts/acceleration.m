function w=acceleration(output, theta, input, pos_output, vel_output)
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

r3dot = vel_output(1);
w3 = vel_output(2);
w5 = vel_output(3);
w6 = vel_output(4);

r3ddot = output(1);
a3 = output(2);
a5 = output(3);
a6 = output(4);

w=[w2^2*r2*cosd(phi2) - (r3ddot - w3^2*r3)*cosd(phi3) + (a3*r3 + 2*w3*r3dot)*sind(phi3);
   w2^2*r2*sind(phi2) - (r3ddot - w3^2*r3)*sind(phi3) - (a3*r3 + 2*w3*r3dot)*cosd(phi3);
  -w3^2*r4*cosd(phi3) - a3*r4*sind(phi3) + w5^2*r5*cosd(phi5) + a5*r5*sind(phi5) + w6^2*r6*cosd(phi6) + a6*r6*sind(phi6);
  -w3^2*r4*sind(phi3) + a3*r4*cosd(phi3) + w5^2*r5*sind(phi5) - a5*r5*cosd(phi5) + w6^2*r6*sind(phi6) - a6*r6*cosd(phi6)];

end