close all;
clear all;
clc

load('alg1_500.mat');
load('alg2_500.mat');

% transform time to TTI
time_1 = time_1/0.001;
time_2 = time_2/0.001;

% plot 1, feasible links - active links
plot(x_1, feasible_1, '-d', x_2, feasible_2, '-rs');
title('average feasible links - total links (500 runs)');
xlabel('The Number of Total Links');
ylabel('The Number of Average Feasible Links');
h = legend('Algorithm 1', 'Algorithm 2', 2);
figure;
% plot 2, number of TTI - active links
plot(x_1, time_1, '-d', x_2, time_2, '-rs');
title('average needed TTI - total links (500 runs)');
xlabel('The Number of Total Links');
ylabel('Average Needed TTI');
h = legend('Algorithm 1', 'Algorithm 2', 2);