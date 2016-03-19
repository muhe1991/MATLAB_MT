% test submodularity in Foschini Matrix

totalLink = 10;
a = max(eig(getSubFosMatrix(F, [2 5 8])))-max(eig(getSubFosMatrix(F, [2 5])))
b = max(eig(getSubFosMatrix(F, [1 2 5 8])))-max(eig(getSubFosMatrix(F, [1 2 5])))
a>b

plotValue = [];
for i=2:10
    linkSet = 1:i;
    plotValue = [plotValue max(eig(getSubFosMatrix(F, linkSet)))];
end

plot(plotValue);
max(eig(F))