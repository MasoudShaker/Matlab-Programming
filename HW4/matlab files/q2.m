clc;
clear;

coeff = input('please enter the coefficients: ');
% gets the coefficients of the polynomial function
r = roots(coeff);
% computes real and imaginary roots of the polynomial function
is_real = imag(r) == 0;
% creates a boolean vector which containes 1 for real roots and 0 for imaginary
% roots
is_imaginary = imag(r) ~= 0;
% creates a boolean vector which containes 1 for imaginary roots and 0 for real
% roots

num_of_real = sum(is_real);
% gets the number of real roots of the polynomial function
num_of_imaginary = sum(is_imaginary);
% gets the number of imaginary roots of the polynomial function

fprintf('\nnumber of real roots : %d \n', num_of_real);
fprintf('\nnumber of imaginary roots : %d \n', num_of_imaginary);