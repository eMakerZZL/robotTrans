function output_mat = trans_cyl(r,a,l)
    output_mat = parallel(0,0,l) * rotatez(a) * parallel(r,0,0);
end
