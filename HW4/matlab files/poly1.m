M = [2 4 6; 8 10 12; 14 16 18]
% creat matrix M
e = eig(M)
% compute the eigenvalues of matrix M
p = poly(e)
% determine the characteristic polynomial from the values in e