function [newF, linkSet] = addALink(F, link, linkSet)

% the number of links in old link set
numOld = max(size(linkSet));
num = numOld + 1;
newF = zeros(num);
linkSet = [linkSet link];
for i=1:num
    for j=1:num
        if i~=j
            newF(i,j) = F(linkSet(i),linkSet(j));
        end
    end
end




end