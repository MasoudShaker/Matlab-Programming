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

f = 2 * k * ((sin(x) > 0) - 0.5);
% create the f(x) function 

e = abs(f - S_n);
% compute the error fuction with built in funtion 'abs'
figure();
plot(x, e);  
% plot the error function with range of [-7,7] for x-axis
xlabel('x');
ylabel('Error function');
title('N = 17');
% put some titles and labels
axis ([-7, 7, 0, k + 1]);
% set the axis
grid on;
hold off;