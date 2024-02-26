%%% Plot Fixed Costs 

% Import data 
fixedcosts      =  csvread('fixedcosts_usa.csv',1,0);
%%

% Plot fixed cost US 
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([12 25]);
xlim([1978 2016]);
yticks([ 15 20 25]); 
xticks([1980 1995  2010]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
print(  gdp_plot, '-dpdf'           , 'output/figure2.pdf');
%%
% Add cost of capital 
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
plot(fixedcosts(:,1),fixedcosts(:,4).*100      ,'--'  ,'LineWidth',3.0,'Color',[0.2 0.8 0.8])
plot(fixedcosts(:,1),fixedcosts(:,5).*100      ,'-.'  ,'LineWidth',3.0,'Color','k')
plot(fixedcosts(:,1),fixedcosts(:,6).*100      ,'-*'  ,'LineWidth',3.0,'Color','r')
%plot(fixedcosts(:,1),fixedcosts(:,7).*100      ,'-O'  ,'LineWidth',3.0,'Color','g')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([12 25]);
xlim([1979 2016]);
yticks([ 15 20 25]); 
xticks([1980 1995  2010]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
legend('Original','Adj. Case 1','Adj. Case 2','Adj. Case 3','Location','Southeast','FontSize',26)
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
print(  gdp_plot, '-dpdf'           , 'output/figureA2a.pdf');
%%
% Add alternative production function 
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([12 25]);
xlim([1979 2016]);
yticks([ 15 20 25]); 
xticks([1980 1995  2010]); 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
yyaxis right 
plot(fixedcosts(:,1),fixedcosts(:,8).*100      ,'-s'  ,'LineWidth',3.0,'Color',[0.2 0.8 0.8])
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
legend('Baseline','3-Factor','Location','Southeast','FontSize',26)
print(  gdp_plot, '-dpdf'           , 'output/figureA1b.pdf');


% Alternative: SG&A costs 
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
plot(fixedcosts(:,1),fixedcosts(:,7).*100      ,'-*'  ,'LineWidth',3.0,'Color','r')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([12 25]);
xlim([1979 2016]);
yticks([ 15 20 25]); 
xticks([1980 1995  2010]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
legend('Fixed Costs','SG&A','Location','Southeast','FontSize',26)
print(  gdp_plot, '-dpdf'           , 'output/figureA3a.pdf');

% Alternative: operating leverage 
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
plot(fixedcosts(:,1),fixedcosts(:,9).*100      ,'-*'  ,'LineWidth',3.0,'Color','r')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([11 25]);
xlim([1979 2016]);
yticks([ 15 20 25]); 
xticks([1980 1995  2010]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
legend('Fixed Costs','Operating Leverage','Location','Southeast','FontSize',26)
print(  gdp_plot, '-dpdf'           , 'output/figureA3b.pdf');

