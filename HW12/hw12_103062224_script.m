P = [0,1; 2,3; 4,5; 2,0; 5,2; 7,3];
G = [1,1,1,2,2,2];
C = [1,0,0; 0,0,1];

figure('position', [10, 10, 1500, 500]);
ds.input = P';
ds.output = G;
ds.inputName = {'x', 'y'};
ds.outputName = {'red', 'blue'};
pr = knncTrain(ds);
knncPlot(ds, pr);

figure('position', [10, 10, 1500, 500]);
ds.input = P';
ds.input(2, :) = ds.input(2, :) * 10;
ds.output = G;
ds.inputName = {'x', 'y'};
ds.outputName = {'red', 'blue'};
pr = knncTrain(ds);
knncPlot(ds, pr);