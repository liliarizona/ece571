function out=l2nmat(mat)

dim=size(mat);

out=zeros(dim(1),dim(2));
for i=1:1:dim(1)
    for j=1:1:dim(2)
        out(i,j)=l2n(mat(i,j));
    end
end