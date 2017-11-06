function out=n2lmat(mat)

dim=size(mat);

%out=char(dim(1),dim(2));
for i=1:1:dim(1)
    for j=1:1:dim(2)
        out(i,j)=char(mat(i,j)+65);
    end
end