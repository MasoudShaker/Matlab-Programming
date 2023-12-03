tiledlayout('flow')
% create a tiled chart layout in the 'flow' tile arrangement
ax1 = nexttile;
% create an axes object
x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y1 = 1./x;
% elementwise divide 1 by x
semilogx(ax1,x,y1)
% display a linear-log plot