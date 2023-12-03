function nested_func2
% The main function including two nested functions that share variable x
   nested1
   nested2

   function nested1
       % nested function 1
      x = 'Hey it is nested1!'
   end

   function nested2
       % nested function 2
      x = 'Hey it is nested2!'
   end
end