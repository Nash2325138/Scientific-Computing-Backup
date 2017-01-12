load census.mat
data = [cdate, pop]';
maxOrder = 18;
showPlot = 1;
bestOrder = polyOrderSelect(data, 20, 1)

fprintf('1. 2 bytes * 16000 Hz * 10s = 320,000 bytes\n');
fprintf('2. Array of float datas\n');
fprintf('3. nBits * nChannel * fs * duration\n');
fprintf('4. 320,044 bytes\n');
fprintf('5. 44 bytes\n');


fs=16000;
nBits=16;
nChannel=1;
duration=10;
recObj=audiorecorder(fs, nBits, nChannel);
fprintf('Press any key to record for %g seconds:\n', duration); pause;
recordblocking(recObj, duration);
y = getaudiodata(recObj, 'double');
plot((1:length(y))/fs, y); xlabel('Time (sec)'); ylabel('Amplitude');
audioFile='myVoice.wav';
fprintf('Saving to %s...\n', audioFile);
audiowrite(audioFile, y, fs);
