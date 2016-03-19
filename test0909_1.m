clear all
load F.dat

totalLink = size(F,1);
activeLink = 8;
set = nchoosek(1:totalLink,activeLink);

radiusTable = [];
for i=1:size(set,1)
    newF = constructNewF(F, set(i,:));
    newRadius = max(eig(newF));
    radiusTable = [radiusTable newRadius];
    %fprintf('\nThe %dth of %d radius is %f\n', i, size(set,1), newRadius);
end
radius = min(radiusTable);
[sortedRadiusTable, sortedIndex] = sort(radiusTable);
set(sortedIndex(1),:)

avrTable = [];
for i=1:size(set,1)
    newF = constructNewF(F, set(i,:));
    list = newF(:);
    list(find(list==0)) = [];
    newAvr = prod(list)^(1/length(list));
    avrTable = [avrTable newAvr];
    %fprintf('\nThe %dth of %d radius is %f\n', i, size(set,1), newRadius);
end
[sortedAvrTable, sortedIndex] = sort(avrTable);
set(sortedIndex(1),:)

a = constructNewF(F, [1 2 4]);
b = constructNewF(F, [2 4 5]);
max(eig(a))
max(eig(b))
a*1e10
b*1e10
a = a(:);
b = b(:);
a(find(a==0)) = [];
b(find(b==0)) = [];
anorm = prod(a)^(1/length(a))
bnorm = prod(b)^(1/length(b))

prod(1:4)
32^(1/5)