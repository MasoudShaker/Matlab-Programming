x = logspace(-2,3,5000);
% create a set of logarithmically spaced x-coordinates
y1 = 8 + 2*sin(x/4);
% create the first set of y- coordinates
y2 = 8 - 2*sin(x/4);
% % create the second set of y- coordinates
loglog(x,y1,x,y2,'-.')
% display x,y1,y2 in a loglog plot
legend('Signal 1','Signal 2','Location','northwest')
% display a legend in the upper left corner of the plot 