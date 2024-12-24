function All_Graphs(phi2, pos_output ,vel_output, acc_output)

graphxx(phi2', pos_output(:,1), 'Theta 2', 'r3');
graphxx(phi2', pos_output(:,2), 'Theta 2', 'Theta 3');
graphxx(phi2', pos_output(:,3), 'Theta 2', 'Theta 5');
graphxx(phi2', pos_output(:,4), 'Theta 2', 'Theta 6');

graphxx(phi2', vel_output(:,1), 'Theta 2', 'r3dot');
graphxx(phi2', vel_output(:,2), 'Theta 2', 'w3');
graphxx(phi2', vel_output(:,3), 'Theta 2', 'w5');
graphxx(phi2', vel_output(:,4), 'Theta 2', 'w6');

graphxx(phi2', acc_output(:,1), 'Theta 2', 'r3ddot');
graphxx(phi2', acc_output(:,2), 'Theta 2', 'a3');
graphxx(phi2', acc_output(:,3), 'Theta 2', 'a5');
graphxx(phi2', acc_output(:,4), 'Theta 2', 'a6');

end