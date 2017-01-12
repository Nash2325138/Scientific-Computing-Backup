figure('Position', [10, 10, 1800, 500]);
axis on, rotate3d on, box on
view(3)
     
K=2;
P = rand(1000, 3);
clr = lines(K);
     
for i = 1:3
    subplot(1,3,i)
    [idx, centers] = kmeans(P, K);
    scatter3(P(:,1), P(:,2), P(:,3), 36, clr(idx, :), 'marker', '.');
    hold on
	scatter3(centers(:,1), centers(:,2), centers(:,3), 3000, clr, 'marker', '.');    
end
