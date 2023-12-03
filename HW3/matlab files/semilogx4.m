x = logspace(-2,3,10);
% create a set of x- coordinates
y = 15 + x;
% create a set of y- coordinates
semilogx(x,y,'*','MarkerFaceColor',[0 0.447 0.741])
% specify the line style as '*'. Specify the marker fill color as the RGB triplet [0 0.447 0.741]
grid on
% show the grid lines