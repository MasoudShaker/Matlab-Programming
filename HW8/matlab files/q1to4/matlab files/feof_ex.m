fileID = fopen('more_than_one_line_input.txt');
% open the file more_than_one_line_input.txt
while ~feof(fileID)
    tline = fgetl(fileID);
    disp(tline)
end
% read and display one line at a time until you reach the end of the file
fclose(fileID);
% close the file