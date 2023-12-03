x = logspace(-1,2,10000);
% create a set of x- coordinates
y = 8 + 2*sin(x);
% create a set of y- coordinates
loglog(x,y)
% display x and y in a loglog plot