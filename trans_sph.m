function output_mat = trans_sph(l,b,r)
    output_mat = rotatez(r) * rotatey(b) * parallel(0,0,l);
end
