f = logspace(1,3,100);
% generate a vector containing the frequencies from 10 Hz to 1000 Hz
v = linspace(-50,50,100);
gain = (1-exp(5*(2.5*v.^2)./7500))/14;
% define a vector of power gain values
semilogx(f,gain)
% plot the gain values against frequency
grid on
% show the grid lines