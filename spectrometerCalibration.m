% Author: Naufer Nusran 4/3/2019
% Syntax: ospectrometerCalibration(centerWL, gratingNumber)
% Eg: ospectrometerCalibration(637, 1)

function CalibRange = spectrometerCalibration(cWL, gr)
switch gr  
    case 1
        CalibRange =30.8704 - 0.0034*cWL + 0.00001*cWL^2;
    case 2
        CalibRange =-32.9769 + 0.4494*cWL - 0.0006*cWL^2;             
end