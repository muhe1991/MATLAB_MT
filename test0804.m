% totalLink = size(F,1);
% radius = 10;
% activeLink = 22+1;
% while radius>=1
%     activeLink = activeLink - 1;
%     fprintf('\nActive Link Number is %d\n', activeLink);
%     set = nchoosek(1:totalLink,activeLink);
%     radiusTable = [];
%     fprintf('\nThe number of combinations is %d\n', size(set,1));
%     for i=1:size(set,1)
%         newF = constructNewF(F, set(i,:));
%         newRadius = max(eig(newF));
%         radiusTable = [radiusTable newRadius];
%         fprintf('\nThe %dth of %d radius is %f\n', i, size(set,1), newRadius);
%     end
%     radius = max(radiusTable);
%     fprintf('\nLargest radius is %f\n', radius);
% end

linkSet = 1:size(F,1);
feasibleSet = [getMinRowAndColNorm(F)];
radius = 0;
while radius<1
    undeterminedSet = getUndeterminedSet(feasibleSet, linkSet);
    minInter = 10000;
    for i=1:length(undeterminedSet)
        undeterminedLink = undeterminedSet(i);
        interference = norm([F(:,undeterminedLink)' F(undeterminedLink,:)]);
        if interference<minInter
            toAdd = undeterminedLink;
            minInter = interference;
        end
    end
    [newF, feasibleSet] = addALink(F, toAdd, feasibleSet);
    radius = max(eig(newF));
end
