clc;
clear;
%F = b/a

print_residue([5 3], [3 4 5]); % complex roots (Degree of Numerator < Degree of Denominator)
print_residue([5 3 1], [1 2 1]); % real roots (Degree of Numerator = Degree of Denominator)
print_residue([5 3 1 0], [1 2 1]); % real roots (Degree of Numerator > Degree of Denominator)


function print_residue(b, a)
    disp('converted to partial expansion:');
    [r, p, k] = residue(b, a)
    disp('converted back to polynomial coefficients:');
    [b_conv_back, a_conv_back] = residue(r, p, k)
end