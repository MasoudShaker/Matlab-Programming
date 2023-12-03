clc;
clear;

%Y(s) = b(s)/a(s)

b = [1 3];
a = [1 6 8 0];

[r, p, k] = residue(b, a)