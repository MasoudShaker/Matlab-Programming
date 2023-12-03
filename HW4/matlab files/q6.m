clc;
clear;

m1 = [-1 0 1]; % m1 = -x^2 + 1
m2 = [1 -2 3]; % m2 = x^2 -2x + 3
m1_to3 = conv(conv(m1, m1), m1); %m1^3
m3 = conv(m1_to3, m2); % m1^3*m2
final = polyint(m3);

% integration boundaries
a = -3; 
b = 4;

value_for_a_b = polyval(final,[a b]); % polyval(p,x) evaluates the polynomial p at each point in x.

% diff(X) calculates differences between adjacent elements of X along the
% first array dimension. here we only have two elements and it gives (value for b - value for a)
I = diff(value_for_a_b) %integration from a to b 