clc;
clear;
 
N = [1 5 11 13]; % s^3 + 5s^2 + 11s + 13
D = [1 2 4]; % s^2 + 2s + 4
%[H_q, H_r] = deconv(N, D); % N/D
 
disp('Function: N');
first_derivative = polyder(N) % first order derivative of N
second_derivative = polyder(first_derivative) % second order dervative of N
integral = polyint(N) %integration without constant
 
disp('Function: H');
[first_derivative_q, first_derivative_d] = polyder(N,D) % first order derivative of H
[second_derivative_q, second_derivative_d] = polyder(first_derivative_q,first_derivative_d) % second order dervative of H
integral = polyint(deconv(N, D)) %integration without constant
