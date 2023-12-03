x = 1:50;
% create a vector of x- coordinates
y1 = x.^2;
% create the fist vector of y- coordinates
y2 = x.^3;
% create the second vector of y- coordinates
semilogy(x,y1,x,y2)
% plot two lines by passing comma-separated x-y pairs to semilogy
grid on
% show the grid lines