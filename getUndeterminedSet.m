function [undeterminedSet] = getUndeterminedSet(feasibleSet, allSet)
undeterminedSet = [];
for i=1:size(allSet,2)
    thisLink = allSet(i);
    findResult = find(feasibleSet==thisLink);
    if isempty(findResult)
        undeterminedSet = [undeterminedSet thisLink];
    end
end
end