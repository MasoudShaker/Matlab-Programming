function [arithmetic, geometric] = mymean(x)
% The main function of the m file2
n = length(x);
arithmetic = arithmetic_mean(x,n);
geometric = geometric_mean(x,n);
end

function a = arithmetic_mean(x,n)
% arithmetic_mean example of a local function
a = sum(x)/n;
end

function g = geometric_mean(x,n)
% geometric_mean example of a local function
g = nthroot(prod(x),n); 
end