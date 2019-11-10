function output_mat = rotatey(theta)
    rotate_mat = @(radian) ...
    [
       cos(radian)  , 0 , sin(radian) , 0;
       0            , 1 , 0           , 0;
       -sin(radian) , 0 , cos(radian) , 0;
       0            , 0 , 0           , 1;
    ];

    output_mat = rotate_mat(theta);
end
