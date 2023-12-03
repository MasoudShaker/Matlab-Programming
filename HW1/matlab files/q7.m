clc;
clear;

for i = 1:3 %loop iterating for i in range [1, 3]
    if i==1
        disp('if');
    elseif i==2
        disp('elseif');
    else
        disp('else')
    end
end
disp('--------') %seperate the two output parts
for i = 1:6 %loop iterating for i in range [1, 6]
   switch mod(i, 4) %switch on the remainder of i/4
    case 0
        disp('case0')
    case 1
        disp('case1')
    case 2
        disp('case2')
    otherwise
        disp('otherwise')
   end
end