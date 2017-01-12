DS=prData('wine');
tic
[qcPrm, logProb, recogRate, hitIndex]=qcTrain(DS);
toc
fprintf('Inside test: ');
fprintf('Training RR=%.2f%%, Validating RR=%.2f%%\n\n', tRrAll*100, vRrAll*100);
for m = [2, 10, size(DS.input, 2)]
    showPlot=0;
    foldNum=m;
    classifier='qc';
    tic
    [vRrAll, tRrAll]=perfCv(DS, classifier, [], foldNum, showPlot);
    toc
    if m==2
        fprintf('Two-side holdout test: ');
    elseif m == 10
        fprintf('10-fold cross validation: ');
    elseif m == size(DS.input, 2)
        fprintf('leave-one-out cross validation');
    end
    fprintf('Training RR=%.2f%%, Validating RR=%.2f%%\n\n', tRrAll*100, vRrAll*100);
end
