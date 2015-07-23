clc
clear all;
filename = 'F:\Software\omnetpp-4.6-src-windows\omnetpp-4.6\samples\SimuLTE_D2D\myPowerTest\results\PowerControl-0.sca';
[pathstr,name,ext] = fileparts(filename);
%newname = [pathstr filesep name ext]
%Tictoc{1} = importfile(filename)
total = 500;
for i=0:total-1
    part = num2str(i);
    newname = strrep(name, '0', part);
    newpath = [pathstr filesep newname ext];
    Tictoc{i+1} = importfile1(newpath);
end

active = [];
for i=1:total
    tmp = Tictoc{i};
    if (~isempty(tmp))
        active = [active tmp(1,2)];
    end
end

table = zeros(3,max(active));

for i=1:total
    tmp = Tictoc{i};
    if (~isempty(tmp))
        index = tmp(1,2);
        if (tmp(2,2)~=0)
            table(1,index) = table(1,index) + 1;
            table(2,index) = table(2,index) + tmp(2,2);
            table(3,index) = table(3,index) + tmp(3,2);
        end
    end
end

x=1:max(active);
feasible=table(2,:)./table(1,:);
time=table(3,:)./table(1,:);
plot(x,feasible);
figure;
plot(x,time);
x_2 = x;
feasible_2 = feasible;
time_2 = time;

x_1 = 1:14;
x_2 = 1:12;
load alg1_500;
plot(x_1, feasible_1);
hold on;
plot(x_2, feasible_2, 'r');
figure;
plot(x_1, time_1);
hold on;
plot(x_2, time_2, 'r');

