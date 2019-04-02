% Author: Naufer Nusran 4/2/2019
% Syntax: openCFM(filelname,startFreq,stopFreq,numOfsteps)
% Eg: openESR('esr-data.txt',2.8,2.94,100)

function esr = openESR(flname,startf,stopf,steps)
stepsize = (stopf - startf)/(steps - 1);
freqarr=startf:stepsize:stopf;
pwdir=pwd;
longflnm=strcat(pwdir,'\',flname);
data = load(longflnm); 
avgdata=mean(data);  % Remove "mean" if data has only one run
stddata=std(data);
plot(freqarr', avgdata', 'bo', 'MarkerSize', 5); % Plot the data
ylabel('Fluorescence'); 
xlabel('Frequency (GHz)'); 
hold on
errorbar(freqarr', avgdata', stddata');
end