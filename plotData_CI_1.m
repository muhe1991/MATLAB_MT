clear all;
clc;
close all;

load result
area = 1*1;

% figure;
errorbar(plotValueAlg1_200_new(1,:)/area, plotValueAlg1_200_new(2,:), plotValueAlg1_200_new(3,:), 'linewidth',1.5);
hold on;
errorbar(plotValueAlg1_phase1_200(1,:)/area, plotValueAlg1_phase1_200(2,:), plotValueAlg1_phase1_200(3,:),'-r', 'linewidth',1.5);
hold on;
errorbar(plotValueAlg1_phase2_200(1,:)/area, plotValueAlg1_phase2_200(2,:), plotValueAlg1_phase2_200(3,:),'-k', 'linewidth',1.5);

title('Performance comparison based on active link density','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
xlabel('Total Active Link Density in [links/cell])','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
ylabel('Feasible Link Density in [links/cell])','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
grid on;
set(gca,'fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
set(gca, 'LineWidth',1.5);
h = legend('Phase 1 + 2', 'Phase 1 Only', 'Phase 2 Only' ,'Location', 'NorthWest');
% hh = findobj('tag','legend')    
% set(hh,'fontsize',30)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperUnits', 'points');
set(gcf, 'PaperPosition', [0 0 560 300]);

print('-dpng','C:\Users\Mu\Desktop\Alg1NumberComparison1.png','-r200');