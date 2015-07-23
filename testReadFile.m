filename = 'F:\Software\omnetpp-4.6-src-windows\omnetpp-4.6\samples\tictoc\results\Tictoc3-0.sca';
[pathstr,name,ext] = fileparts(filename);
%newname = [pathstr filesep name ext]
%Tictoc{1} = importfile(filename)

for i=0:19
    part = num2str(i);
    newname = strrep(name, '0', part);
    newpath = [pathstr filesep newname ext];
    Tictoc{i+1} = importfile(newpath);
end

vector = [];
for i=1:20
    tmp = Tictoc{i};
    vector = [vector tmp(1,2)];
    vector = [vector tmp(2,2)];
end

%histfit(vector)
table=tabulate(vector)
plot(table(:,1),table(:,2))