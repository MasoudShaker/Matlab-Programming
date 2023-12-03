clc;
clear;

x = linspace(-7, 7);
% create the range of x-axis

a_0 = 0;
N = 1;
k = 1;
e_val = 100;
% variables needed for our computations
f_2 = @(x) (2 * k * ((sin(x) > 0) - 0.5)) .^ 2; 
% define the f^2 function

while e_val > 0.07
    sum = 0;
    for n = 1 : N
        a_n = 0;
        b_n = (2 * k) / (n * pi) * (1 - cos(n * pi));
        sum = sum + a_n ^ 2 + b_n ^ 2;
    end
    e_val = integral(f_2, -pi, pi) - pi *(2 * a_0 ^ 2 + sum);
    N = N + 1;
end 
% find the least N value (plus 1) for e_val <= 0.07

N = N - 1;
% N minus 1 becuase in the while end structure at the last step it has been
% incremented by 1

fprintf('\nThe least N for E <= 0.07: %d \n', N);




