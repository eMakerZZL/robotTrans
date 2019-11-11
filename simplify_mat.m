function output_mat = simplify_mat(input_mat)
    output_mat = input_mat;
    output_mat(:,1:2) = rad2deg(output_mat(:,1:2));
    output_mat(:,1:2) = round(output_mat(:,1:2));
end
