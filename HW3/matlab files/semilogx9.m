x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y = x;
% assign x to y
y(40) = NaN;
% replace the fortieth y-coordinate with a NaN value
semilogx(x,y)
% create a linear-log plot of x and y