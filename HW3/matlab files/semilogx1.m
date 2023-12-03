x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y = x;
% assign x to y
semilogx(x,y)
% create a linear-log plot of x and y
grid on
% show the grid lines