function [arithmetic,geometric,harmonic] = mean3(vector,size_of_vector)
% function to compute arithmetic,geometric and harmonic mean of a vector
if size_of_vector ~= size(vector)
    error('please enter the size of array correctly!')
end
% check that user enters the size of array correctly
arithmetic = sum(vector)/size_of_vector;
% Arithmetic Mean = (x1 + x2 + … + xN) / N
geometric = nthroot(prod(vector),size_of_vector); 
% Geometric Mean = N-root(x1 * x2 * … * xN)
harmonic = size_of_vector*prod(vector)/sum(vector); 
% Harmonic Mean = N / (1/x1 + 1/x2 + … + 1/xN)