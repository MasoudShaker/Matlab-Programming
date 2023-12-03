function output = q6_function(varargin) %gets variable input arguments in the form of a cell array
% if gets 2 inputs -> subtraction
% if gets 3 inputs -> min
% if gets 4 inputs -> max
% if gets >4 inputs -> print error

% switch case just like what we have in Java and C!
switch nargin % nargin gives the total number of input arguments (varargin here)
   case 2
      output = varargin{1} - varargin{2}; % subtract cell1 and cell2 of the input cell array
   case 3
      output = min([varargin{1} varargin{2} varargin{3}]); % put the cells in an array and find the minimum
   case 4
      output = max([varargin{1} varargin{2} varargin{3} varargin{4}]); % put the cells in an array and find the maximum
        
   otherwise % default statement
      disp('error!');
end


end

