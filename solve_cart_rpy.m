function output_mat = solve_cart_rpy(mat)
    theta_a(1,1) = atan2( mat(2,1), mat(1,1));
    theta_a(2,1) = atan2(-mat(2,1),-mat(1,1));

    theta_o(1,1) = atan2(-mat(3,1),mat(1,1)*cos(theta_a(1,1)) + mat(2,1)*sin(theta_a(1,1)));
    theta_o(2,1) = atan2(-mat(3,1),mat(1,1)*cos(theta_a(2,1)) + mat(2,1)*sin(theta_a(2,1)));

    theta_n(1,1) = atan2(-mat(2,3)*cos(theta_a(1,1)) + mat(1,3)*sin(theta_a(1,1)), mat(2,2)*cos(theta_a(1,1)) - mat(1,2)*sin(theta_a(1,1)));
    theta_n(2,1) = atan2(-mat(2,3)*cos(theta_a(2,1)) + mat(1,3)*sin(theta_a(2,1)), mat(2,2)*cos(theta_a(2,1)) - mat(1,2)*sin(theta_a(2,1)));

    output_mat = [theta_n';theta_o';theta_a'];
    output_mat = [output_mat mat(1:3,4)];
end
