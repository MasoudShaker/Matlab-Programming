fileID = fopen('one_line_input.txt');
% open the file one_line_input.txt
fIDs = fopen('all')
% get the file identifiers of all open files
[filename,~,~,encoding] = fopen(fileID)
% get the file name and character encoding for the open file