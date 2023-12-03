tiledlayout('flow')
% create a tiled chart layout in the 'flow' tile arrangement
ax = nexttile;
% create an axes object
x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y = 2.^x;
% 2 (elementwise) power by x
loglog(ax,x,y)
% display a log-log plot