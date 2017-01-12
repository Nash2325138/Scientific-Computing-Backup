ds = prData('wine');
max = -1;
for i = 1:7
   for j = i:8
        ds2 = ds;
        ds2.input = ds.input([i,j], :);
        [nbcPrm, logLike, recogRate]=nbcTrain(ds2);
        if recogRate > max
            max = recogRate;
            ri = i;
            rj = j;
        end
   end
end
fprintf('Best: (%d, %d) -> %f\n', [ri, rj, max]);

ds2 = ds;
ds2.input = ds.input([ri,rj], :);
ds2.inputName = ds2.inputName([ri, rj]);
[nbcPrm, logLike, recogRate, hitIndex]=nbcTrain(ds2);
ds2.hitIndex=hitIndex; % Attach hitIndex to DS for plotting
nbcPlot(ds2, nbcPrm, 'decBoundary'); 