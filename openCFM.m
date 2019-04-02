% Author: Naufer Nusran 4/2/2019
% Syntax: openCFM(filelname,[xrange],[yrange])
% Eg: openCFM('cfm-data.txt',[0 100],[-100 100])

function img = openCFM(fn,xr,yr)
pwdir=pwd;
longflnm=strcat(pwdir,'\',fn); 
data = load(longflnm); 
imagesc(xr,yr,data); % Plot the CFM data
ylabel('Y'); 
xlabel('X'); 
hold on
end
