prompt1 = 'Please enter the first number: ';
first_number = input(prompt1); 
% get the first number

prompt2 = 'Please enter the second number: ';
second_number = input(prompt2);
% get the second number

prompt3 = 'What kind of mean do you want me to compute for you?\n (arithmetic 1 geometric 2 harmonic 3) \n';
n = input(prompt3); 
% get the type of mean that should be calculated

out = cell(1,n); 
% creat a cell with size of n
[out{:}] = mean3([first_number,second_number],2); 
% insert the output to the cell
nth_output = out{n} 
% get the nth output

    



