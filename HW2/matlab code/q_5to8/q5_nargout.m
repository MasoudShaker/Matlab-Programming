clc;
clear;

check_output_number();
a = check_output_number();
[a, b] = check_output_number();

fprintf('check_input_number output args count: %i\n', nargout('check_output_number')) % Number of function input arguments

fprintf('check_input_number output args count: %i\n', nargout('func_with_varargout')) % Number of function input arguments
% displays -4. meaning: 4 output args and the 4th one is a varargin

% Function definitions can be in a script! They must appear at the end of the file.
%...................................................................................
function [a, b] = check_output_number() % acts based on the outputs it is called with
    switch nargout %switch on number of outputs
        case 0
            disp('zero output arguments')
        case 1
            disp('one output argument')
        case 2
            disp('two output arguments')
    end
    a = 3;
    b = 2;
end
%...................................................................................
function [a, b, c, varargout] = func_with_varargout()
end