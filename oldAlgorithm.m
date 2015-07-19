clear all;
load FoschiniMatrix.mat;
allSet = 1:size(F,1);
linkSet = [1];
for i=1:3
    undeterminedSet = getUndeterminedSet(linkSet, allSet);
    interferenceSumOld = 10000;
    interferenceSum = 0;
    link = 0;
    for m=1:size(undeterminedSet,2)
        for n=1:size(linkSet,2)
            oldLink = linkSet(n);
            newLink = undeterminedSet(m);
            interferenceSum = interferenceSum+F(oldLink, newLink);
            interferenceSum = interferenceSum+F(newLink, oldLink);
        end
        if interferenceSum<interferenceSumOld
            interferenceSumOld = interferenceSum;
            link = newLink;
        end
        interferenceSum = 0;
    end
    [newF, linkSet] = addALink(F, link, linkSet);
    max(eig(newF))
end
linkSet