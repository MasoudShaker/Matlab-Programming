function p = nested_func3(a,b)
% The main function that returns a handle to the nested function summation
p = @summation;

   function y = summation(x)
   % The nested function
   y = x + a + b;
   end

end