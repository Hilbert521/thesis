function cellInfo = bus_PropellerParameters(varargin) 
% BUS_PROPELLERPARAMETERS returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the m-file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, SampleTime, Complexity, SamplingMode, DimensionsMode 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'PropellerParameters', ... 
    '', ... 
    sprintf(''), { ... 
      {'a0', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'del0_2', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'nb', 1, 'uint32', -1, 'real', 'Sample', 'Fixed'}; ...
      {'radius', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'chord', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'btmin', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'btmax', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'btq', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'theta', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'twist', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'iflap', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'mbar', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'azsign', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'flags', 1, 'uint32', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 
