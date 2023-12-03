clc;
clear;

tic % start timer (tic1)
a = (1:10);
b = a.^2;
toc % elapsed time from tic1

secondTic = tic; % tic2 does not reset tic
b = a.^2;

toc % elapsed time from tic1
toc(secondTic) % elapsed time from tic2

t_begin_for_loop = tic; % tic3 does not reset tic
mult_time = 0;
for i = 1:10
    tic         % tic4 resets tic
    c = a.*b;
    elapsed = toc;  % elapsed time from tic4
    mult_time = mult_time + elapsed; 
end
mult_time
for_loop_total_time = toc(t_begin_for_loop) % elapsed time from tic3