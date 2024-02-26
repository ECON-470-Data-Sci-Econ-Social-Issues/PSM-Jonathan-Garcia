%%% Plot Fixed Costs for france

% housekeeping
clear 
close all

% move to higher parent directory 
parentDirectory = fileparts(cd);
cd(parentDirectory);
parentDirectory = fileparts(cd);
cd(parentDirectory);
addpath('./code_and_output_confidentialdata/figures');

% Import data
fixedcosts      =  xlsread('fixedcostsmacroaggregates_fr.xls');
fixedcosts(15,2) = (fixedcosts(14,2) + fixedcosts(16,2) )/2 ; %interpolate 

% Plot fixed cost  
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([8 17]);
xlim([1993 2017]);
yticks([ 8 12 16]); 
xticks([1995 2005  2015]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
print(  gdp_plot, '-dpdf'           , 'code_and_output/code/output/figure2b.pdf');

% Add cost of capital 
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2).*100      ,'-'  ,'LineWidth',3.0,'Color','b')
plot(fixedcosts(:,1),fixedcosts(:,4).*100      ,'--'  ,'LineWidth',3.0,'Color',[0.2 0.8 0.8])
plot(fixedcosts(:,1),fixedcosts(:,5).*100      ,'-.'  ,'LineWidth',3.0,'Color','k')
plot(fixedcosts(:,1),fixedcosts(:,6).*100      ,'-*'  ,'LineWidth',3.0,'Color','r')
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([8 20]);
xlim([1993 2017]);
yticks([ 8 12 16 20]); 
xticks([1995 2005  2015]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
legend('Original','Adj. Case 1','Adj. Case 2','Adj. Case 3','Location','Southeast','FontSize',26)
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
print(  gdp_plot, '-dpdf'           , 'code_and_output/code/output/figureA2b.pdf');



% Import data
fixedcosts      =  xlsread('figure2_fr.xls');
fixedcosts(15,2) = (fixedcosts(14,2) + fixedcosts(16,2) )/2 ; %interpolate 
fixedcosts(15,3) = (fixedcosts(14,3) + fixedcosts(16,3) )/2 ; %interpolate 

% Plot fixed cost - figure A1a   
gdp_plot= figure; 
hold on
set(gca,'Box','on')
set(gca,'FontSize',26)
plot(fixedcosts(:,1),fixedcosts(:,2)      ,'-'  ,'LineWidth',3.0,'Color','b')
plot(fixedcosts(:,1),fixedcosts(:,3)      ,'-.'  ,'LineWidth',3.0)
ylabel('Fixed Costs (% of Total Costs)','FontSize',34);
ylim([0 16]);
xlim([1993 2017]);
yticks([ 0 5 10 15]); 
xticks([1995 2005  2015]); 
ax = gca ; 
ax.XAxis.FontSize = 32;
ax.YAxis.FontSize = 32;
set(    gdp_plot,'PaperOrientation' ,'landscape');
set(    gdp_plot,'Papertype' ,'a4');
set(    gdp_plot,'PaperUnits'       ,'normalized');
set(    gdp_plot,'PaperPosition'    , [0 0 1 1]);
print(  gdp_plot, '-dpdf'           , 'code_and_output/code/output/figureA1a.pdf');
