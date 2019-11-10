function output_mat = solve_cart_euler(intput_mat)
    n = 1;x = 1;
    o = 2;y = 2;
    a = 3;z = 3;
    mat = @(aixs, part) intput_mat(part,axis);

    theta_a0(1,1) = atan2( mat(a,y), mat(a,x));
    theta_a0(2,1) = atan2(-mat(a,y),-mat(a,x));

    theta_a1(1,1) = atan2(-mat(n,x)*sin(theta_a0(1,1)) + mat(n,y) * cos(theta_a0(1,1)), -mat(o,x) * sin(theta_a0(1,1)) + mat(o,y) * cos(theta_a0(1,1)));
    theta_a1(2,1) = atan2(-mat(n,x)*sin(theta_a0(2,1)) + mat(n,y) * cos(theta_a0(2,1)), -mat(o,x) * sin(theta_a0(2,1)) + mat(o,y) * cos(theta_a0(2,1)));

    theta_o(1,1) = atan2(mat(a,x) * cos(theta_a0(1,1)) + mat(a,y) * sin(theta_a0(1,1)), mat(a,z));
    theta_o(2,1) = atan2(mat(a,x) * cos(theta_a0(2,1)) + mat(a,y) * sin(theta_a0(2,1)), mat(a,z));

    output_mat = [theta_a0'; theta_o'; theta_a1'];
    output_mat = [output_mat,intput_mat(1:3,:)];
end
