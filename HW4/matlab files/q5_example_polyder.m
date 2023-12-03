clc;
clear;

p1 = [-9 0 5 0 5]; % -9x^4 + 5x^2 + 5
p2 = [1 0]; % x
q1 = polyder(p1) % q1(x) = dp1(x)/dx
q2 = polyder(p1, p2) % q2(x) = dp1(x)p2(x)/dx
[q3_q, q3_d] = polyder(p1, p2) % q3_q(x)/q3_d(x) = d(p1(x)/p2(x))/dx
