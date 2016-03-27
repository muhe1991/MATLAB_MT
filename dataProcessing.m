clc
clear all;
filename = 'F:\Software\omnetpp-4.6-src-windows\omnetpp-4.6\samples\OMNET_SimuLTE_framework-old\myPowerTest\results\General-0.sca';
[pathstr,name,ext] = fileparts(filename);
%newname = [pathstr filesep name ext]
%Tictoc{1} = importfile(filename)
single = 200;
min = 10;
max = 60;
interval = 10;
total = single * size(min:interval:max,2);
for i=0:total-1
    part = num2str(i);
    newname = strrep(name, '0', part);
    newpath = [pathstr filesep newname ext];
    Tictoc{i+1} = importfile1(newpath);
end

dataList = [];
dataNumberList = min:interval:max;
dataNumberList(2,:) = zeros(1,length(dataNumberList));
for i=1:total-1
    tmp = Tictoc{i};
    if (~isempty(tmp))
%         newEntry = [tmp(1,2) tmp(2,2) tmp(3,2)];
        newEntry = [tmp(1,2) tmp(2,2)];
        dataList = [dataList; newEntry];
        dataNumberList(2,floor(i/single)+1) = dataNumberList(2,floor(i/single)+1)+1;
    %else
        %newEntry = [10 10];
        %dataList = [dataList; newEntry];
    end
end

confidenceLevel = 0.90;
p = 1-(1-confidenceLevel)/2;

plotValue = [];
index = 1;
for totalLink=min:interval:max
    data = dataList(index:index+dataNumberList(2,(totalLink-min)/interval+1)-1,2);
    emean = mean(data);
    estd = std(data);
    t = tinv(p, single-1);
    error = t*estd/sqrt(single);
    newEntry = [totalLink; emean; error];
    plotValue = [plotValue newEntry];
    index = index+dataNumberList(2,(totalLink-min)/interval+1);
end
    
% For algorithm 1 comparison, time comparison
% plotTimeValue = [];
% index = 1;
% for totalLink=min:interval:max
%     data = dataList(index:index+dataNumberList(2,(totalLink-min)/interval+1)-1,3);
%     emean = mean(data);
%     estd = std(data);
%     t = tinv(p, single-1);
%     error = t*estd/sqrt(single);
%     newEntry = [totalLink; emean; error];
%     plotTimeValue = [plotTimeValue newEntry];
%     index = index+dataNumberList(2,(totalLink-min)/interval+1);
% end

% min = min(dataList(:,1));
% max = max(dataList(:,1));
% 
% confidenceLevel = 0.90;
% p = 1-(1-confidenceLevel)/2;
% 
% x = 1:max;
% 
% totalLink = 50;
% index = find(dataList(:,1)==totalLink);
% plotValue = [];
% for totalLink=min:max
%     index = find(dataList(:,1)==totalLink);
%     if ~isempty(index)
%         data = dataList(index,2);
%         num = size(data,1);
%         emean = mean(data');
%         estd = std(data');
%         t = tinv(p, num-1);
%         error = t*estd/sqrt(num);
% %         ub = emean+t*estd/sqrt(num);
% %         lb = emean-t*estd/sqrt(num);
%         if num~=1
%             newEntry = [totalLink; emean; error];
%             plotValue = [plotValue newEntry];
%         end
%         
%     end
% end

% figure
% errorbar(plotValue(1,:), plotValue(2,:), plotValue(3,:))
% plotValueAlg1 = plotValue;
% save alg1_1000 plotValueAlg1

% d5060 = plotValue;
% save haha d5060 -append    

plotValueAlg3 = plotValue;
save result plotValueAlg3 -append

% plotValueAlg1_phase1_200_Time = plotTimeValue;
% save result plotValueAlg1_phase1_200_Time -append
    