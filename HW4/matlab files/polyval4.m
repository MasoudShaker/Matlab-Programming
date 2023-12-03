year = (1750:25:2000)';
pop = 1e6*[791 856 978 1050 1262 1544 1650 2532 6122 8170 11560]';
T = table(year, pop);
% create a table of population data for the years 1750 - 2000 and plot the data points
plot(year,pop,'o');
% % plot the data points
% [p,~,mu] = polyfit(T.year, T.pop, 5);
% % fit a 5th-degree polynomial using centering and scaling
% f = polyval(p,year,[],mu);
% % evaluate p with the scaled years
% hold on
% plot(year,f);
% % plot the results against the original years
% hold off