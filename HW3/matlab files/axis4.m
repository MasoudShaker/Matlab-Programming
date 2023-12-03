tiledlayout(2,1)
% create a 2-by-1 tiled chart layout
x1 = linspace(0,10,50);
% create a set of x- coordinates
y1 = sin(x1);
% create a set of y- coordinates
ax1 = nexttile;
% create the axes objects ax1
plot(ax1,x1,y1)
% plot data in ax1 axes

x2 = linspace(0,5,50);
% create a set of x- coordinates
y2 = sin(x2);
% create a set of y- coordinates
ax2 = nexttile;
% create the axes objects ax1
plot(ax2,x2,y2)
% plot data in ax2 axes

axis([ax1 ax2],[0 10 -1 1])
% set the axis limits for both ax1 and ax2 to the same values