clc;
clear;


get_variable_num_of_inputs(1, 2, 'text1','text2',[6 8])
disp('--------------------------------')
[seq1, seq2, seq3] = var_power_sequences(1, 3, 5); %put the sequences(cells) in three variables

% Function definitions can be in a script! They must appear at the end of the file.
%...................................................................................
function get_variable_num_of_inputs(explicit1, explicit2, varargin) % Variable Number of Function Inputs
    % varargin is a cell array
    disp('explicits: ');
    disp(explicit1);
    disp(explicit2);
    disp('var arg in: ');
    for i = 1:(nargin-2) % nargin gives the total number of input arguments (varagin + explicit)
       disp(varargin{i}); 
    end
end
%...................................................................................
function varargout = var_power_sequences(varargin) % variable input and variable output arguments
    % varargin gives n numbers as powers
    % the output is a varargout containing n power sequences of each of the input powers

    num_of_seqs = size(varargin, 2); % number of seqences that will be on output = num of input numbers
    % vargin is 1*N so we want the second dimension as the num of sequences
    
    sequence = [1:10]; % gives the sequence 1, 2, ..., 10
    
    for i = 1:num_of_seqs  
        varargout{i} = sequence.^i; % each cell is a power sequence of the input powers
    end
    varargout  % shows that varargout is a 1*3 cell array   
    
end
%...................................................................................