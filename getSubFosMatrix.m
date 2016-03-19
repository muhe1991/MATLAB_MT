function [subF] = getSubFosMatrix(F, linkSet)

linkSetTmp = linkSet(1);

for i=2:length(linkSet)
    [subF, linkSetTmp] = addALink(F, linkSet(i), linkSetTmp);
end

end