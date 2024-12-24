function w=position(output, theta, input)

phi2 = theta;
r1 = input(1);
r2 = input(2);
r4 = input(3);
r5 = input(4);
r6 = input(5);
r7 = input(6);
phi7 = input(7);

r3 = output(1);
phi3 = output(2);
phi5 = output(3);
phi6 = output(4);

w=[-r2*cosd(phi2) - r3*cosd(phi3);
r1 - r2*sind(phi2) - r3*sind(phi3);
r4*cosd(phi3) - r5*cosd(phi5) - r6*cosd(phi6) - r7*cosd(phi7);
r4*sind(phi3) - r5*sind(phi5) - r6*sind(phi6) - r7*sind(phi7)];
end