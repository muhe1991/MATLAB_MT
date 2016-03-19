clear all;
clc;
close all;

load result
area = 1000*1000;

figure;
errorbar(plotValueAlg1_200(1,:)/area, plotValueAlg1_200(2,:), plotValueAlg1_200(3,:), 'linewidth',3.0);
hold on;
errorbar(plotValueAlg2_200(1,:)/area, plotValueAlg2_200(2,:), plotValueAlg2_200(3,:),'-k', 'linewidth',3.0);
hold on;
errorbar(plotValueAlg3_200(1,:)/area, plotValueAlg3_200(2,:), plotValueAlg3_200(3,:),'-r', 'linewidth',3.0);
hold on;
errorbar(plotValueAlg1_phase1_200(1,:)/area, plotValueAlg1_phase1_200(2,:), plotValueAlg1_phase1_200(3,:),'-c', 'linewidth',3.0);
hold on;
errorbar(plotValueAlg7_200(1,:)/area, plotValueAlg7_200(2,:), plotValueAlg7_200(3,:),'-m', 'linewidth',3.0);
hold on;
errorbar(plotValueAlg8_200(1,:)/area, plotValueAlg8_200(2,:), plotValueAlg8_200(3,:),'-y', 'linewidth',3.0);
% hold on;
% errorbar(plotValueAlg5_200(1,:)/area, plotValueAlg5_200(2,:), plotValueAlg5_200(3,:),'-o');
% hold on;
% errorbar(plotValueAlg6_200(1,:)/area, plotValueAlg6_200(2,:), plotValueAlg6_200(3,:),'-s');
title('average feasible links - total links (1200 runs)','fontsize',30);
xlabel('Link Density (per square meter)','fontsize',30);
ylabel('The Number of Average Feasible Links','fontsize',30);
set(gca,'fontsize',20);
% h = legend('subset selection with one-by-one merge', 'column norm based link subtraction', 'row & column norm based link addition', 'Alg 4', 'Alg 5', 'Alg 6', 6);
h = legend('subset selection with one-by-one merge', 'column norm based link removal', 'row & column norm based link merge', 'row & column norm based link removal', 4);
hh = findobj('tag','legend')    
set(hh,'fontsize',30)