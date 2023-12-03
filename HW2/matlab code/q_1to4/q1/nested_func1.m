function parent
% The main function
disp('I am the parent of the nested child function below. He is a bad child!')
nested_child

   function nested_child
       % The nested function
      disp('I am the nested child of parent function above. Do not pay attention to him!')
   end

end