function output_mat = trans_euler(a0,o,a1)
    output_mat = rotatez(a0) * rotatey(o) * rotatez(a1);
end
