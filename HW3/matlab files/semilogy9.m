x = 1:100;
% create a vector of x- coordinates
y = x.^3;
% create a vector of y- coordinates
y(30) = NaN;
% replace the thirtieth y-coordinate with a NaN value
semilogy(x,y)
% create a linear-log plot of x and y