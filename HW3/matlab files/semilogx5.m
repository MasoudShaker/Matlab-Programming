x = logspace(1,5,50);
% create a vector of logarithmically spaced x-coordinates
v = linspace(-20,20,50);
y1 = 100*exp(-1*((v+5).^2)./100);
% create a vector of logarithmically spaced y-coordinates
y2 = 100*exp(-1*(v.^2)./100);
% create a vector of logarithmically spaced y-coordinates
semilogx(x,y1,x,y2,'-.')
% plot two lines by passing comma-separated x-y pairs
legend('Measured','Estimated')
% display a legend 
grid on
% show the grid lines