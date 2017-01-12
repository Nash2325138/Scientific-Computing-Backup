figure('Position', [10, 10, 1000, 1000]);
axis on, rotate3d on, box on
view(3)

K=3;
clr = lines(K);
ds = prData('iris');
dsProjPlot3(ds);

figure('Position', [10, 10, 1000, 1000]);
axis on, rotate3d on, box on
view(3)
P = ds.input';
[idx, centers] = kmeans(P, K);

subplot(2,2,1)
hold on
scatter3(P(:,1), P(:,2), P(:,3), 36, clr(idx, :), 'marker', '.');
scatter3(centers(:,1), centers(:,2), centers(:,3), 1000, clr, 'marker', '.');

subplot(2,2,2)
hold on
scatter3(P(:,1), P(:,2), P(:,4), 36, clr(idx, :), 'marker', '.');
scatter3(centers(:,1), centers(:,2), centers(:,4), 1000, clr, 'marker', '.');

subplot(2,2,3)
hold on
scatter3(P(:,1), P(:,3), P(:,4), 36, clr(idx, :), 'marker', '.');
scatter3(centers(:,1), centers(:,3), centers(:,4), 1000, clr, 'marker', '.');

subplot(2,2,4)
hold on
scatter3(P(:,2), P(:,3), P(:,4), 36, clr(idx, :), 'marker', '.');
scatter3(centers(:,2), centers(:,3), centers(:,4), 1000, clr, 'marker', '.');

