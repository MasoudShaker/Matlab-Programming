p = [1 2 -5 15];
% coefficients of the polynomial function
q = polyint(p);
% integrate the polynomial function
lower_limit = 2;
% lower limit of the integral
upper_limit = 10;
% upper limit of the integral
I = diff(polyval(q,[lower_limit upper_limit]))
% find the value of the integral