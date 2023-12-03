P = 500; 
npayments = 240;  
rate = 0.05/12; 
mpayment = P*(rate*(1+rate)^npayments)/(((1+rate)^npayments) - 1);
x = 1:240;
% create installments on a 20 year loan
y = x * mpayment;
% create cumulative cost of a $1000 loan with an interest rate of 5%
semilogy(x,y);
% plot the cumulative cost at each installment
grid on
% show the grid lines