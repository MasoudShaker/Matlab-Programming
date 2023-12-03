x = linspace(0,10);
% create a set of x- coordinates
y = sin(x);
% create a set of y- coordinates (sine function of x)
plot(x,y)
% plot x and y
y2 = 2*sin(x);
% create another set of y- coordinates (2 * sine function of x)
hold on
% add another sine wave to the axes
axis manual
% keep the current axis limits
plot(x,y2)
% plot x and y2
hold off
