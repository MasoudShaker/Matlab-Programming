fileID = fopen('more_than_one_line_input.txt');
% open the file more_than_one_line_input.txt
line_ex = fgetl(fileID)
% read line excluding newline character
frewind(fileID);
% reset the read position indicator back to the beginning of the file
line_in = fgets(fileID)
% read line including newline character
length_line_ex = length(line_ex)
% length of line_ex
length_line_in = length(line_in)
% length of line_in