% Author: Naufer Nusran 4/3/2019
% Syntax: openWLS(filelname,centerWL,gratingNumber, points)
% Eg: openWLS('wls-data.txt',637,1, 1024)
% The wavelength dyanamic range depends on the grating and angle.
% spectrometerCalibration(cWL, gr) contains the clibration for WL range.  

function wls = openWLS(flname, centerWL, grating, points)
rangeWL=spectrometerCalibration(centerWL, grating);
stepsize = (rangeWL)/(points);
WLarr=centerWL-rangeWL/2+stepsize*[0:points-1];
pwdir=pwd;
longflnm=strcat(pwdir,'\',flname);
data = load(longflnm); 
plot(WLarr', data', 'ro', 'MarkerSize', 3); % Plot the data
ylabel('Counts'); 
xlabel('Wavelength (nm)'); 
hold on
end