clc;
clear;

x = linspace(-7, 7);
% create the range of x-axis

N = 17; 
k = 1;
% variables needed for our computations

S_n = 0;
a_0 = 0;
a_n = 0;
b_n = 0;
% vaules that we're gonna compute them in the for-end below

a_0 = 0;
a_n = 0;
for n = 1 : N
    b_n = ((2 * k) / (n * pi)) * (1 - cos(n * pi));
    S_n = S_n + a_0 + a_n .* cos(n * x) + b_n .* sin(n * x);
end 
% Fourier Series computation

figure();
hold on;
f = 2 * k * ((sin(x) > 0) - 0.5);
% create the f(x) function 
plot(x, f);
% plot the function f(x) with range [-7,7] for x-axis
plot(x, S_n, 'b');
% plot the Fourier Series with range [-7,7] for x-axis and set the color to
% blue
xlabel('x');
ylabel('S_n');
legend('F(x)','Fourier Series');
title('N = 17');
% put some titles and labels
axis ([-7, 7, - k - 1, k + 1]);
grid on;
hold off;

