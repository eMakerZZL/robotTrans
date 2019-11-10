function output_mat = rotatez(theta)
    rotate_mat = @(radian) ...
    [
        cos(radian) , -sin(radian) , 0 , 0;
        sin(radian) , cos(radian)  , 0 , 0;
        0           , 0            , 1 , 0;
        0           , 0            , 0 , 1;
    ];

    output_mat = rotate_mat(theta);
end
