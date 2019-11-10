function output_mat = trans_rpy(a,o,n)
    output_mat = rotatez(a) * rotatey(o) * rotatex(n);
end
