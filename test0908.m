clear all;
load F.dat
load G.dat

allSet = 1:size(F,1);
allIn = false;
% find the first link
% vector = zeros(size(F,1),1);
% for i=1:size(F,1)
%     vector(i) = dot(F(:,i),F(i,:)');
% end
% linkSet = [find(vector==min(vector))];
linkSet = [12]

flag = 0;
while flag<1
    if size(linkSet)==size(allSet)
        allIn = true;
        break;
    end
    undeterminedSet = getUndeterminedSet(linkSet, allSet);
    interferenceSumOld = 10000;
    interferenceSum = 0;
    link = 0;
    for m=1:size(undeterminedSet,2)
        for n=1:size(linkSet,2)
            oldLink = linkSet(n);
            newLink = undeterminedSet(m);
            interferenceSum = interferenceSum+F(oldLink, newLink)*F(newLink, oldLink);
        end
        if interferenceSum<interferenceSumOld
            interferenceSumOld = interferenceSum;
            link = newLink;
        end
        interferenceSum = 0;
    end
    [newF, linkSet] = addALink(F, link, linkSet);
    flag=max(eig(newF));
end

% % find the max interference link
% vector = zeros(size(newF,1),1);
% for i=1:size(newF,1)
%     vector(i) = dot(newF(:,i),newF(i,:)');
% end
% linkIndex = 19%find(vector==max(vector));
% link = linkSet(linkIndex);
% % remove this link from link set
% linkSet(find(linkSet==link)) = [];
% % update newF
% newF(:,linkIndex) = [];
% newF(linkIndex,:) = [];


length(linkSet)-1