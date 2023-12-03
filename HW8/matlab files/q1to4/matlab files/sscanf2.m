str = "12 17 13 68 23 87 35"
% create a string that contains numbers separated by whitespace characters
[A,n] = sscanf(str,'%d')
% convert the numbers in the string using %d
% Count the elements that sscanf puts into the output array when it converts the string to numbers