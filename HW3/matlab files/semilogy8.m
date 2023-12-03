x = 1:100;
% create a vector of x- coordinates
y1 = x.^2;
% create the first vector of y- coordinates
y2 = x.^4;
% create the second vector of y- coordinates
slg = semilogy(x,y1,x,y2);
% create the line objects
slg(1).LineWidth = 5;
% change the width of the first line to 5
slg(2).Color = [0.4 0 1];
% change the color of the second line to purple
