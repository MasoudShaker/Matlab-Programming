clc; 
clear;

N = [1, 5, 11, 13];
% creates the polynomial function N
D = [1, 2, 4];
% creates the polynomial function D
[Q,R] = deconv(N,D)
% computes the quotient and remainder
fprintf('\nH(s) = N(s)/D(s)\n');
fprintf('\nN(s)/D(s) = Q(s) + R(s)/D(S)\n');
fprintf('\nN(s) = Q(s).D(S) + R(s)\n');
fprintf('\ns^3 + 5s^2 + 11s + 13 = (s + 3)(s^2 + 2s + 4) + (s + 1)\n');
fprintf('\nWe are done!\n');
