load census.mat
data = [cdate, pop]';
maxOrder = 18;
showPlot = 1;
bestOrder = polyOrderSelect(data, 20, 1)