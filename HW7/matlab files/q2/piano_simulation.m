clc;
clear;

freqs = zeros(1,26);

for i=40:65 
    freqs(i-39) = 2 ^ ((i-49)/12) * 440;
    % the formula for nth key frequency in piano
    % suppose (i-39) as n. it's just for indexing the freqs array better
end

    

Fs = 1E+4;
nBits = 24;
nChannels = 1;

my_audio = audiorecorder(Fs, nBits, nChannels);
% create an audiorecorder object that helps us record and audio file

disp('Start recording')
recordblocking(my_audio, 20);
% record for 20 seconds
disp('End Recording');

filename = 'audio4.wav';
% set the file namv
audiowrite(filename, getaudiodata(my_audio), Fs);

figure('keypress', @key);
% make and empty figure window which responds to the keyboard


function key(~, event)
    switch event.Key
        case 'q', freq = 261.6256;   % C4 (middle C)
        case '2', freq = 277.1826;   % C4#
        case 'w', freq = 293.6648;   % D4
        case '3', freq = 311.1270;   % D4#
        case 'e', freq = 329.6276;   % E4
        case 'r', freq = 349.2282;   % F4
        case '5', freq = 369.9944;   % F4#
        case 't', freq = 391.9954;   % G4
        case '6', freq = 415.3047;   % G4#
        case 'y', freq = 440.0000;   % A4
        case '7', freq = 466.1638;   % A4#
        case 'u', freq = 493.8833;   % B4
        case 'z', freq = 523.2511;   % C5
        case 's', freq = 554.3653;   % C5#
        case 'x', freq = 587.3295;   % D5
        case 'd', freq = 622.2540;   % D5#
        case 'c', freq = 659.2551;   % E5
        case 'v', freq = 698.4565;   % F5
        case 'g', freq = 739.9888;   % F5#
        case 'b', freq = 783.9909;   % G5#
        case 'h', freq = 830.6094;   % G5#
        case 'n', freq = 880.0000;   % A5
        case 'j', freq = 932.3275;   % A5#
        case 'm', freq = 987.7666;   % B5
        case 'k', freq = 1046.502;   % C6
        case 'l', freq = 1108.731;   % C6#
    end
    
    % a function that sets the value of frequency for each note 
    % using a switch case
    
    wave = sin(freq*2*pi*[0:1/8192:.3]);
    % create the wave for each note using the formula
    
    sound(wave);
    % convert the signal data(wave) to sound

end
