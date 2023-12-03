x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y = 2.^x;
% assign 2 (elementwise) pwoer by x to y
loglog(x,y)
% plot x and y
grid on
% show the grid lines