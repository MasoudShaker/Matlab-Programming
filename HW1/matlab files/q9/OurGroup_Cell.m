clc;
clear;

c = { 
    int32(97243054), "male", 18.7, ["AI" "CI" "Robotics" "Algo" "DS" "Statistics" "AP" "ITP"];
    int32(97243081), "male", 16.2, ["AI" "CI"]
    }%2*4 cell array

c(2, 4) %one cell containing a 1x2 string array
save('OurGroup_Cell','c')