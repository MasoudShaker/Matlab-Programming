function [root1,root2] = equation_of_degree_2(a,b,c)
% function to compute the root(roots) of an equation of degree 2 if
% if it has any roots
delta = b^2 - 4*a*c; 
% calculate delta

if delta<0 
    error('There is no real roots!')
end
% if the equation doesn't have real roots, send an error
root1 = (-1*b+sqrt(delta))/2*a;
% calculate first root of the equation
root2 = (-1*b-sqrt(delta))/2*a;
% calculate second root of the equation


