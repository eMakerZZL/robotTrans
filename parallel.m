function output_mat = parallel(delta_x, delta_y, delta_z)
    parallel_mat = @(x, y, z) ...
    [
        1, 0, 0, x;
        0, 1, 0, y;
        0, 0, 1, z;
        0, 0, 0, 1;
    ];
    output_mat = parallel_mat(delta_x, delta_y, delta_z);
end
