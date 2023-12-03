x = 1:1:8;
% set the x range
y = [x;rand(1,8)];
% create 8 random numbers and store them into an array
fileID = fopen('nums2.txt','w');
% create the file nums2.txt and open it
fprintf(fileID,'%d %4.4f\n',y);
% print the contents of nums2.txt
type nums2.txt
% show the contents of the file 
fileID = fopen('nums2.txt','r');
% open the file for reading, and obtain the file identifier, fileID
formatSpec = '%d %f';
% define the format of the data to read 
sizeA = [2 Inf];
% define the shape of the output array
A = fscanf(fileID,formatSpec,sizeA)
% Read the file data, filling output array, A, in column order. fscanf reuses the format, formatSpec, throughout the file
fclose(fileID);
% close the file 