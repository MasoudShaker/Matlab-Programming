clc;
clear;

f_adr = input('enter file adress: ', 's');
% f_adr = 'bench.txt';
f_id_r = fopen(f_adr); % file pointer for reading
f_id = fopen('report.txt','w'); % file pointer for writing

str_raw = textscan(f_id_r,'%s'); % reads the file into a 1*1 cell of cell array
text = str_raw{1}; % get the cell array
text = string(text); % convert the cell array to a string array

fprintf(f_id, 'number of tokens          -> %i \n', numel(text)); % numel returns num of elements in the array text

char_count = strlength(text); % store the length of all the tokens in an array
size(char_count);
% calculating mean and standard deviation:
fprintf(f_id, 'character count           -> mean : %f\t standard deviation: %f \n', mean(char_count), std(char_count));

unique_text = unique(text); % returns the same data as in text, but with no repetitions.
fprintf(f_id, 'number of unique tokens   -> %i \n', numel(unique_text));

[s,i1,i2]=unique(text); % i1 and i2 are indexes to access text and s respectively. s contains unique strings sorted
[M,F,C] = mode(i2); %  computes the mode over all elements of i2. C has all the modes and F is the mode frequency.
modes = cell2mat(C); % convert cell array to array
fprintf(f_id, 'the most frequent tokens  -> frequency: %i \t tokens: ', F);
% a loop to print all the modes:
for n = 1 : length(modes)
    fprintf(f_id, '%s \t', s(modes(n))); 
end
fprintf(f_id, '\n');

% printing lists based on string length:
for i = 1 : max(char_count)
    fprintf(f_id, 'tokens with %i characters  -> [ ', i);
    for j = 1 : length(text)
       if(char_count(j) == i)
           fprintf(f_id, '%s ', text(j));
       end
    end
    fprintf(f_id, '] \n');
end

fclose(f_id_r);
fclose(f_id);