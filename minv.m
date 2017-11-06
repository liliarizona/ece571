function invmat=minv(mat,m)
%modulo inverse of a 2x2 matrix

det=mat(1,1)*mat(2,2)-mat(1,2)*mat(2,1);

newm=modInv(det,m)* mod([mat(2,2) -mat(1,2); -mat(2,1) mat(1,1)], m);
invmat=mod(newm,m);