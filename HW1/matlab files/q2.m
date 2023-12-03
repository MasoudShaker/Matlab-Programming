clc;
clear;
r = []; %results array (1-> True, 0->False)
r(1) = strncmpi('our_Struct.mat','OURS.mat', 3); %compare first n chars(case insensitive)
r(2) = strncmpi('our_Struct.mat','OURS.mat', 4);
 
r(3) = strcmpi('our_Struct.mat','our_Struct'); %compare strings(case insensitive)
r(4) = strcmpi('ours.mat','OURS.mat');

r(5) = strncmp('ours.mat','ouRS.mat', 3);%compare first n chars(case sensitive)
r(6) = strncmp('ours.mat','ours.m', 3);
 
r(7) = strcmp('ours.mat','ours.m'); %compare strings(case sensitive)
r(8) = strcmp('Ours.m','Ours.m');
disp(r) %display results array