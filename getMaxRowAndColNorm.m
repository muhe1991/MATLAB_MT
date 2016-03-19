function [num] = getMaxRowAndColNorm(F)
Fsize = size(F,1);
normTable = [];
for i=1:Fsize
    newVector = [F(:,i)' F(i,:)];
    newNorm = norm(newVector);
    normTable = [normTable newNorm];
end
num = find(normTable==max(normTable));

end