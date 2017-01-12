ds = prData('abalone');
ds = dsClassMerge(ds, {[1,2,3,4,5], [6,7,8,9,10], [11,12,13,14,15,16], [17,18,19,20,21,22], [23,24,25,26,27,28]} );

max = -1;
for i = 1:7
   for j = i:8
        ds2 = ds;
        ds2.input = ds.input([i,j], :);
        [qcPrm, logProb, recogRate, hitIndex]=qcTrain(ds2);
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
[qcPrm, logProb, recogRate, hitIndex]=qcTrain(ds2);
ds2.hitIndex=hitIndex; % Attach hitIndex to DS for plotting
qcPlot(ds2, qcPrm, 'decBoundary'); 