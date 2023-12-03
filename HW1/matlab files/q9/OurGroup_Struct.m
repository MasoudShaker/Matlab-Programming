clc;
clear;

s = struct(... % a struct with two instaces 
'id', {int32(97243054), 97243081}, ...
'sex', {"male", "male"}, ...
'gpa',{18.7, 16.2}, ...
'fav_courses', {["AI" "CI" "Robotics" "Algo" "DS" "Statistics" "AP" "ITP"], ["AI" "CI"]});

disp(struct2table(s)); %display the struct converted to a table
s(2).fav_courses %1x2 string array
save('OurGroup_Struct','s') %save variable 's' as 'OurGroup_Struct.mat'