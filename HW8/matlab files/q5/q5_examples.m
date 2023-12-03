clc;
clear;

filename = 'test.txt';
fid = fopen('test.txt', 'r');
text_fileread = fileread(filename)
text_readlines = readlines(filename)
text_textscan = textscan(fid,'%s')