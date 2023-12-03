x = 1:100;
% create a vector of x- coordinates
y1 = x.^2;
% create the fist vector of y- coordinates
y2 = x.^3;
% create the second vector of y- coordinates
semilogy(x,y1,'-.',x,y2)
% display x,y1,y2 in a log-linear plot
legend('x^2','x^3','Location','northwest')
% display a legend in the upper left corner of the plot