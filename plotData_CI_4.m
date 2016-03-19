clear all;
clc;
close all;

load result
area = 1*1;

% figure;
errorbar(plotValueAlg1_200_new(1,:)/area, plotValueAlg1_200_new(2,:), plotValueAlg1_200_new(3,:),'-r','linewidth',1.5);
hold on;
errorbar(plotValueAlg7_200(1,:)/area, plotValueAlg7_200(2,:), plotValueAlg7_200(3,:),'--k','linewidth',1.5);
hold on;
errorbar(plotValueAlg12_200(1,:)/area, plotValueAlg12_200(2,:), plotValueAlg12_200(3,:),'-k','linewidth',1.5);
hold on;
errorbar(plotValueAlg11_200(1,:)/area, plotValueAlg11_200(2,:), plotValueAlg11_200(3,:),'-.k','linewidth',1.5);
hold on;
errorbar(plotValueAlg2_200(1,:)/area, plotValueAlg2_200(2,:), plotValueAlg2_200(3,:),':k','linewidth',1.5);


% title('Performance comparison based on active link density','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
xlabel('Total Active Link Density in [links/cell])','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
ylabel('Feasible Link Density in [links/cell])','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
grid on;
set(gca,'fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
set(gca, 'LineWidth',1.5);
h = legend('Reference algorithm', 'Link removal (inner product of column & row)','Link mergence (product of column sum & row sum)',...
    'Link removal (1-norm column & row)',...
    'Link removal (2-norm column)','Location','NorthWest');
% hh = findobj('tag','legend')    
% set(hh,'fontsize',30)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperUnits', 'points');
set(gcf, 'PaperPosition', [0 0 560 300]);

print('-dpng','C:\Users\Mu\Desktop\FinalNumberComparison.png','-r200');