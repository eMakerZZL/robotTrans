function output_mat = transInv(input_mat)
    output_mat = input_mat(1:3,1:3).';
    pos_vec = input_mat(1:3,4).';
    pos_vec = -1 .* pos_vec * input_mat(1:3,1:3);
    output_mat = [output_mat,pos_vec.';0 0 0 1];
end
