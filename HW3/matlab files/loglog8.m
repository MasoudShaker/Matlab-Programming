x = logspace(-2,3);
% generate a row vector x of 50 logarithmically spaced points between decades 10^-2 and 10^3
y1 = 3.^x;
% create the first vector of y- coordinates 
y2 = 1./3.^x;
% create the second vector of y- coordinates 
lg = loglog(x,y1,x,y2);
% create the line objects