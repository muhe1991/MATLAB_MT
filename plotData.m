close all;
clear all;
clc

load('alg1_500.mat');
load('alg2_500.mat');
load('alg3_500.mat');

% transform time to TTI
time_1 = time_1/0.001;
time_2 = time_2/0.001;
time_3 = time_3/0.001;

% plot 1, feasible links - active links
plot(x_1, feasible_1, '-d', x_2, feasible_2, '-rs', x_3, feasible_3, '-og');
title('average feasible links - total links (500 runs)');
xlabel('The Number of Total Links');
ylabel('The Number of Average Feasible Links');
h = legend('subset selection with one-by-one merge', 'column norm based link subtraction', 'row & column norm based link addition', 3);
figure;
% plot 2, number of TTI - active links
plot(x_1, time_1, '-d', x_2, time_2, '-rs', x_3, time_3, '-og');
title('average needed TTI - total links (500 runs)');
xlabel('The Number of Total Links');
ylabel('Average Needed TTI');
h = legend('subset selection with one-by-one merge', 'column norm based link subtraction', 'row & column norm based link addition', 3);