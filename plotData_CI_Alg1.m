clear all;
clc;
close all;

load result
area = 1*1;

figure;
errorbar(plotValueAlg1_200_new(1,:)/area, plotValueAlg1_200_new(2,:), plotValueAlg1_200_new(3,:));
hold on;
errorbar(plotValueAlg1_phase1_200(1,:)/area, plotValueAlg1_phase1_200(2,:), plotValueAlg1_phase1_200(3,:));
hold on;
errorbar(plotValueAlg1_phase2_200(1,:)/area, plotValueAlg1_phase2_200(2,:), plotValueAlg1_phase2_200(3,:));
% hold on;
% errorbar(plotValueAlg8_200(1,:)/area, plotValueAlg8_200(2,:), plotValueAlg8_200(3,:),'-y', 'linewidth',3.0);
title('Average Feasible links - total links (1200 runs)');
xlabel('Total Link Density (per km^2)');
ylabel('Feasible Link Density (per km^2)');
set(gca,'fontsize',20);
% h = legend('subset selection with one-by-one merge', 'column norm based link subtraction', 'row & column norm based link addition', 'Alg 4', 'Alg 5', 'Alg 6', 6);
% h = legend('Phase 1+2', 'Phase 1', 'Phase 2','Good one', 4);
h = legend('Phase 1+2', 'Phase 2', 2);
% hh = findobj('tag','legend')    
% set(hh,'fontsize',30)

% figure;
% errorbar(plotValueAlg1_200_time_new(1,:)/area, plotValueAlg1_200_time_new(2,:), plotValueAlg1_200_time_new(3,:), 'linewidth',3.0);
% % hold on;
% % errorbar(plotValueAlg1_phase1_200(1,:)/area, plotValueAlg1_phase1_200(2,:), plotValueAlg1_phase1_200(3,:),'-k', 'linewidth',3.0);
% hold on;
% errorbar(plotValueAlg1_phase2_200_Time(1,:)/area, plotValueAlg1_phase2_200_Time(2,:), plotValueAlg1_phase2_200_Time(3,:),'-r', 'linewidth',3.0);
% % hold on;
% % errorbar(plotValueAlg8_200(1,:)/area, plotValueAlg8_200(2,:), plotValueAlg8_200(3,:),'-y', 'linewidth',3.0);
% title('average feasible links - total links (1200 runs)','fontsize',30);
% xlabel('Link Density (per square meter)','fontsize',30);
% ylabel('The Number of Average Feasible Links','fontsize',30);
% set(gca,'fontsize',20);
% % h = legend('subset selection with one-by-one merge', 'column norm based link subtraction', 'row & column norm based link addition', 'Alg 4', 'Alg 5', 'Alg 6', 6);
% % h = legend('Phase 1+2', 'Phase 1', 'Phase 2','Good one', 4);
% h = legend('Phase 1+2', 'Phase 2', 2);
% hh = findobj('tag','legend')    
% set(hh,'fontsize',30)