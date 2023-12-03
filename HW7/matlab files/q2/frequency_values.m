freqs = zeros(1,26);

for i=40:65 
    freqs(i-39) = 2 ^ ((i-49)/12) * 440;
    % the formula for nth key frequency in piano
    % suppose (i-39) as n. it's just for indexing the freqs array better
end

for i=1:size(freqs,2)
    freqs(i)
    % show that our calculated frequencies are correct and exactly the same
    % as freq for each key in piano_simulation.m
end

    