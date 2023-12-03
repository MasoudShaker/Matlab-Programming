clc;
clear;

%get the inputs
name = input('enter your name: ', 's');
birth_date = input('enter your Gregorian birthdate in dd/mm/yyyy format: ', 's');
up_low = input('enter "U" for uppercase or "L" for lowercase output: ', 's');

if(up_low == 'U')
    disp(upper(name)) %diplay 'name' in uppercase
else
    disp(lower(name)) %diplay 'name' in lowercase
end
date_format = 'dd/mm/yyyy';
birth_numdate = datenum(birth_date, date_format); %converts birthdate char array to a serial date number

%year() is a predefined function to calculate the year part of a date string given the formate
%datestr() is a predefined function to convert serial date number to a string of given format
age = year( datestr(now-birth_numdate,date_format), date_format); 

fprintf('your age is : %i\n' , age); %formatted printing(%i for integer value)
