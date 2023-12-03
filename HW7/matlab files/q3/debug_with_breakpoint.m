function sum_of_all = debug_with_breakpoint(n,arr)
% we want our function to calculate the sum of all elemnts off array arr
% and we're gonna make a mistake to show how we can use a breakpoint]
sum = 0;
for i=1:n
    sum = sum + arr(i);
end

sum_of_all = sum;

end

