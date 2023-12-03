clc;
clear;

A1 = [66.9, 90];
A2 = [0.8,  5 ; 
      700, 0];
fprintf('var1: %5.2f var2: %6.1f\n',A1,A2)

fprintf('%i\n',[1 3 5 7]);

x = 0:.1:1;
A = [x; x.*x];
fileID = fopen('test.txt','w');
nbytes = fprintf(fileID,'%5s %5s\n','x','x^2')
nbytes = fprintf(fileID,'%5.2f %5.4f\n',A)
fclose(fileID);
type test.txt % writes the text file in the console 