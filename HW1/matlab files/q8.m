clc;
clear;

for indx = 0:0.1:1 %starting from 0  with a 0.1 step to 0.3
    if indx < 0.2
        disp('continued');
        continue; %update loop index and jump to start
    end
    disp(indx);
    if indx > 0.5
        disp('broke');
        break; %jump out of for
    end
        
end

disp('------');

n = 3;
while n>0
    disp(n);
    n = n-1; %decrement n
end