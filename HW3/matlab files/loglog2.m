x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y1 = 2.^x;
% create the first y- coordinates vector
y2 = 1./2.^x;
% create the second y- coordinates vector
loglog(x,y1,x,y2)
% plot two lines by passing comma-separated x-y pairs to loglog
grid on
% show the grid lines