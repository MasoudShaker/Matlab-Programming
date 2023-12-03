clc;
clear;

x = int32(input('enter a number: ')); %display the prompt, get the input and cast it to int32
if(x>0)
    if(isprime(x)) %isprime is a predefined function that checks if a number is prime(could be easily implemented with a loop)
        disp('prime!');
    else
        disp('not prime!');
    end
else
    disp('This is not a natural number!');
end
