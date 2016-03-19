function newF = constructNewF(F, linkSet)

linkNum = length(linkSet);
newF = zeros(linkNum,linkNum);
for i=1:linkNum
    for j=1:linkNum
        newF(i,j) = F(linkSet(i),linkSet(j));
    end
end


end