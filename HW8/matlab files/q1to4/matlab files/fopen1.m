fileID = fopen('one_line_input.txt');
% open the file one_line_input.txt
tline = fgetl(fileID)
% pass the fileID to the fgetl function to read one line from the file
fclose(fileID);
% close the file
