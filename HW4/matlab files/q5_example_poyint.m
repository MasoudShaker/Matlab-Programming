clc;
clear;

p1 = [-9 0 5 0 5]; % -9x^4 + 5x^2 + 5
p2 = [1 0]; % x
k = 3; % integration constant

q1 = polyint(p1) % integration of p1
q1_with_k = polyint(p1, k) % integration with a constant k

q2 = polyint(conv(p1, p2)) % integration of p1*p2
q2_with_k = polyint(conv(p1, p2), k) % integration of p1*p2 with a constant k
