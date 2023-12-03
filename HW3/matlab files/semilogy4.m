x = linspace(1,1000,15);
% create a set of x- coordinates
y = (1./x) * 10000;
% create a set of y- coordinates
semilogy(x,y,'*','MarkerFaceColor',[0 0.447 0.741])
% plot x and y in a log-linear plot
% specify the line style as '*'
% Specify the marker fill color as the RGB triplet [0 0.447 0.741]
grid on
% show the grid lines