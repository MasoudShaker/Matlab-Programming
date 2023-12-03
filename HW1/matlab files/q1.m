clc; %clear command window
clear; %clear workspace

name = input('enter your name: ', 's'); %gets a string from command window 
age = int16(input('enter your age: ')); %gets a number from command window and casts it to int16
arr = input('enter an array: '); %gets an array from command window

disp(['your name is : ', name, ' and your age is : ']) %displays a string(char vector) on command window
disp(age); %displays an integer on command window
disp('the array you entered is: ') %displays a string literal on command window
disp(arr); %displays the array on command window


