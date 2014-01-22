function cellInfo = bus_ElectricMotorParameters(varargin) 
% BUS_ELECTRICMOTORPARAMETERS returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the m-file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, SampleTime, Complexity, SamplingMode 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'ElectricMotorParameters', ... 
    '', ... 
    sprintf(''), { ... 
      {'R', 1, 'double', -1, 'real', 'Sample'}; ...
      {'L', 1, 'double', -1, 'real', 'Sample'}; ...
      {'Kv', 1, 'double', -1, 'real', 'Sample'}; ...
      {'Kt', 1, 'double', -1, 'real', 'Sample'}; ...
      {'poles', 1, 'uint32', -1, 'real', 'Sample'}; ...
      {'In', 1, 'double', -1, 'real', 'Sample'}; ...
      {'Ngear', 1, 'double', -1, 'real', 'Sample'}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 
