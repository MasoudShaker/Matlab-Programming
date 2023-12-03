tiledlayout('flow')
% create a tiled chart layout in the 'flow' tile arrangement
ax = nexttile;
% create an axes object
x = 1:50;
% create a vector of x- coordinates
y = x.^2;
% assign elementwise power of x to y
semilogy(ax,x,y)
% display a log-linear plot