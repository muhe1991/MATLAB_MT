clear all;
load F.dat

allSet = 1:size(F,1);
feasibleSet = allSet;
kickSet = [];
flag = max(eig(F));
newF = F;
while flag>1
    vector = zeros(length(feasibleSet),1);
    for i=1:length(feasibleSet)
        vector(i) = dot(newF(i,:),newF(:,i)');
    end
    linkIndex = find(vector==max(vector));
    link = feasibleSet(linkIndex);
    kickSet = [kickSet, link];
    feasibleSet(find(feasibleSet==link)) = [];
    newF(linkIndex,:) = [];
    newF(:,linkIndex) = [];
    flag = max(eig(newF));
end
