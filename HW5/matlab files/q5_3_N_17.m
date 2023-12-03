clc;
clear;

x = linspace(-7, 7);
% create the range of x-axis

N = 17; 
k = 1;
% variables needed for our computations

a_0 = 0;

sum = 0;
for n = 1 : N
    a_n = 0;
    b_n = (2 * k) / (n * pi) * (1 - cos(n * pi));
    sum = sum + a_n ^ 2 + b_n ^ 2;
end
f_2 = @(x) (2 * k * ((sin(x) > 0) - 0.5)) .^ 2; 
% define the f^2 function
e = integral(f_2, -pi, pi) - pi *(2 * a_0 ^ 2 + sum);
fprintf('Approximate Error value for N = %d: %f \n', N, e);
