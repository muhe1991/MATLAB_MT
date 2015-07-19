clc;
clear all;
close all;

load FoschiniMatrix.mat;

normSet = [];
for i=1:5
    normSet = [normSet sum(F(:,i))+sum(F(i,:))];
end

% link = find(normSet==max(normSet));

radius = [];
for i=1:5
    newF = deleteAlink(F, i);
    radius = [radius max(eig(newF))];
end



