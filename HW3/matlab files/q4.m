subplot(2,2,1)
x1 = linspace(-5,5);
% create a set of x- coordinates
f = 3 * exp(-2*x1+1);
% define the f(x) function
plot(x1,f)
xlabel('x')
ylabel('f(x)')
title('Subplot 1: f(x)')

subplot(2,2,2)
x2 = linspace(0.01,32);
% create a set of x- coordinates
g = log3(x2.^2+1);
% define the g(x) function using log3 fuction written by myself
z = log4(x2.^3+2);
% define the z(x) function using log4 fuction written by myself
plot(x2,g)
xlabel('x')
ylabel('g(x)')
hold on
% let us have more than one diagram in a plot
plot(x2,z)
xlabel('x')
ylabel('z(x)')
hold off
legend('g(x)','z(x)')
% label g(x) function and z(x) function in order to recognize them
title('Subplot 2: g(x) and z(x)')

subplot(2,2,3)
t = linspace(0,1,4);
% create a set of x- coordinates
m = sin(pi*t/2);
% define the m(t) function
n = tan(pi*t/3);
% define the n(t) function
plot(t,m)
xlabel('t')
ylabel('m(t)')
yyaxis right
plot(t,n)
xlabel('t')
ylabel('n(t)')
yyaxis left
title('Subplot 3: m(t) and n(t)')

subplot(2,2,4)
y = linspace(0,10);
% create a set of x- coordinates
k = y .* exp(-0.5.*y) .* cos(6*pi.*y);
% define the k(y) function
plot(y,k)
xlabel('y')
ylabel('k(y)')
title('Subplot 4: k(y)')