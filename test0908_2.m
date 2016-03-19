clear all;
load F.dat

totalLink = size(F,1);
radius = 1000;
activeLink = totalLink;
while 1==1
    activeLink = activeLink - 1;
    fprintf('\nActive Link Number is %d\n', activeLink);
    if activeLink==totalLink-1
        set = nchoosek(1:totalLink,activeLink);
    else
        set = [];
        for j=1:size(nextRoundSupport,1)
            for i=1:size(nextRoundSupport,2)
                entry = nextRoundSupport(j,:);
                entry(i) = [];
                if (isempty(set))||(ismember(entry,set,'rows')==0) 
                    set = [set; entry];
                end
            end
        end
    end
    radiusTable = [];
    fprintf('\nThe number of combinations is %d\n', size(set,1));
    for i=1:size(set,1)
        newF = constructNewF(F, set(i,:));
        newRadius = max(eig(newF));
        radiusTable = [radiusTable newRadius];
        fprintf('\nThe %dth of %d radius is %f\n', i, size(set,1), newRadius);
    end
    radius = min(radiusTable);
    fprintf('\nSmallest radius is %f\n', radius);
    if radius<1
        break;
    end
    [sortedRadiusTable, sortedIndex] = sort(radiusTable);
    nextRoundSupport = [];
    for i=1:30
        nextRoundSupport = [nextRoundSupport; set(sortedIndex(i),:)];
    end
end

set(find(radiusTable==radius),:)

% haha = 1:20;
% haha(12) = [];
% haha(19) = [];
% FF = constructNewF(F,haha);
% max(eig(FF))
% 
% haha2 = 1:20;
% haha2(14) = [];
% haha2(19) = [];
% FF2 = constructNewF(F,haha2);
% max(eig(FF2))