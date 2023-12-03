u = [2 7 4 9];
% coefficients of polynomial function u
v = [1 0 1];
% coefficients of polynomial function v
[q,r] = deconv(u,v)
% divide the u by the v which results in quotient coefficients and remainder coefficients