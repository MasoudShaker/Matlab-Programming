x = linspace(-10,10,200);
% create a set of x- coordinates
y = cos(2*x)./exp(.1*x);
% create a set of y- coordinates
plot(x,y)
% plot x and y
axis([-10 10 0 inf])
% use an automatically calculated value for the maximum y-axis limit