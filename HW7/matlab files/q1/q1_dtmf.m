clc;
clear;
    
command = input('enter the input string: ', 's'); % get user input as a string
command_len = size(command, 2); % the length of the string

% process the string char by char
for i=1:command_len
    process(command(i), i);
end

% _____________________________________________________
% _____________________ functions _____________________
% _____________________________________________________
function process(char, char_index)
    % processes one character of the string
    
    [row_freq, col_freq] = lookup(char);
    if(char_index ~= 1)
        pause(0.900); % the first char does not need a pause before being played
    end
    
    create_sound(row_freq, col_freq);
    pause(0.500); % pause execution for 500 milliseconds meanwhile play the sound
    clear sound;
    
end

function create_sound(row_freq, col_freq)
    % creates the sine wave of the given frequencies and plays it.
    
    samp_freq = 16000; % sampling frequency in Hz
    samp_dur= 5; % sampling duration in Sec
    t = 0 : 1/samp_freq : samp_dur; % time samples

    w1=sin(2*pi*t*row_freq); % first sine wave with the row frequency
    w2=sin(2*pi*t*col_freq); % second sine wave with the column frequency
    soundsc(w1+w2,samp_freq) % playing the dual tone signal
end

function [row_freq, col_freq] = lookup(char)
    % a lookup table that returns row and column (high and low) frequencies
    % needed to create the proper sound for each key.
    
    switch char
        case {'1','2', '3', 'A'}
            row_freq = 697;
        case {'4','5', '6', 'B'}
            row_freq = 770;
        case {'7','8', '9', 'C'}
            row_freq = 852;
        case {'*','0', '#', 'D'}
            row_freq = 941;
        otherwise
            error(['invalid character in the input!' char])
    end
    
    switch char
        case {'1','4', '7', '*'}
            col_freq = 1209;
        case {'2','5', '8', '0'}
            col_freq = 1336;
        case {'3','6', '9', '#'}
            col_freq = 1477;
        case {'A','B', 'C', 'D'}
            col_freq = 1633;
        otherwise
            error(['invalid character in the input!' char]) 
    end
end