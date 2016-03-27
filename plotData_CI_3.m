clear all;
clc;
close all;

load result
area = 1*1;

% figure;
density = [10:10:60]

% removal - merge
% 2-norm column
line1 = plotValueAlg2(2,:) - plotValueAlg10(2,:)
% 1-norm column & row
line2 = plotValueAlg11(2,:) - plotValueAlg3(2,:)
% inner product
line3 = plotValueAlg7(2,:) - plotValueAlg8(2,:)
% product of row and column sum
line4 = plotValueAlg12(2,:) - plotValueAlg13(2,:)

plot(density, line1,'-ks', 'linewidth',1.5)
hold on
plot(density, line2,'-kd', 'linewidth',1.5)
hold on
plot(density, line3,'-ko', 'linewidth',1.5)
hold on
plot(density, line4,'-kp', 'linewidth',1.5)

% errorbar(plotValueAlg2_200(1,:)/area, plotValueAlg2_200(2,:), plotValueAlg2_200(3,:),'-k', 'linewidth',1.5);
% hold on;
% errorbar(plotValueAlg10_200(1,:)/area, plotValueAlg10_200(2,:), plotValueAlg10_200(3,:),'-x', 'linewidth',1.5);
% hold on;
% errorbar(plotValueAlg11_200(1,:)/area, plotValueAlg11_200(2,:), plotValueAlg11_200(3,:),'-sr', 'linewidth',1.5);
% hold on;
% errorbar(plotValueAlg3_200(1,:)/area, plotValueAlg3_200(2,:), plotValueAlg3_200(3,:),'-g', 'linewidth',1.5);
% hold on;
% errorbar(plotValueAlg4_200_new(1,:)/area, plotValueAlg4_200_new(2,:), plotValueAlg4_200_new(3,:),'-y', 'linewidth',1.5);
% hold on;
% errorbar(plotValueAlg5_200_new(1,:)/area, plotValueAlg5_200_new(2,:), plotValueAlg5_200_new(3,:),'-+c', 'linewidth',1.5);

% title('Performance comparison based on active link density','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
xlabel('Total Active Link Density in [links/cell])','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
ylabel('Difference of Feasible Link Density in [links/cell])','fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
axis([0 70 -1 2])
grid on;
set(gca,'fontsize',10,'Fontname','Times New Roman','FontWeight','bold');
set(gca);
h = legend('2-norm column','1-norm column & row','inner product of column & row','product of column sum & row sum','Location','NorthWest');
% hh = findobj('tag','legend')    
% set(hh,'fontsize',30)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperUnits', 'points');
set(gcf, 'PaperPosition', [0 0 560 300]);

print('-dpng','C:\Users\Mu\Desktop\RemoveMergenceNumberComparison.png','-r200');