function cellInfo = bus_RotorParameters(varargin) 
% BUS_ROTORPARAMETERS returns a cell array containing bus object information 
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
    'RotorParameters', ... 
    '', ... 
    sprintf(''), { ... 
      {'a0', 1, 'double', -1, 'real', 'Sample'}; ...
      {'del0_2', 3, 'double', -1, 'real', 'Sample'}; ...
      {'precone', 1, 'double', -1, 'real', 'Sample'}; ...
      {'delta3', 1, 'double', -1, 'real', 'Sample'}; ...
      {'e', 1, 'double', -1, 'real', 'Sample'}; ...
      {'khub', 1, 'double', -1, 'real', 'Sample'}; ...
      {'nb', 1, 'uint32', -1, 'real', 'Sample'}; ...
      {'radius', 1, 'double', -1, 'real', 'Sample'}; ...
      {'chord', 1, 'double', -1, 'real', 'Sample'}; ...
      {'btmin', 1, 'double', -1, 'real', 'Sample'}; ...
      {'btmax', 1, 'double', -1, 'real', 'Sample'}; ...
      {'btq', 1, 'double', -1, 'real', 'Sample'}; ...
      {'twist', 1, 'double', -1, 'real', 'Sample'}; ...
      {'iflap', 1, 'double', -1, 'real', 'Sample'}; ...
      {'mbar', 1, 'double', -1, 'real', 'Sample'}; ...
      {'lmast', 1, 'double', -1, 'real', 'Sample'}; ...
      {'hubtype', 1, 'int32', -1, 'real', 'Sample'}; ...
      {'azsign', 1, 'double', -1, 'real', 'Sample'}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 
