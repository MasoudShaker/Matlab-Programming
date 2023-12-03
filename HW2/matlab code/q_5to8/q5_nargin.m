clc;
clear;

check_input_number();
check_input_number(1);
check_input_number(1, 2);

% formatted printing(%i is for integer)
fprintf('check_input_number input args count: %i\n', nargin('check_input_number')) % Number of function input arguments

fprintf('func_with_varargin input args count: %i\n', nargin('func_with_varargin')) % Number of function input arguments
% displays -4. meaning: 4 input args and the 4th one is a varargin

% Function definitions can be in a script! They must appear at the end of the file.
%...................................................................................
function check_input_number(a,b)
    switch nargin %switch on number of inputs
        case 0
            disp('zero input arguments')
        case 1
            disp('one input argument')
        case 2
            disp('two input arguments')
    end
end
%...................................................................................
function func_with_varargin(a, b, c, varargin)
end