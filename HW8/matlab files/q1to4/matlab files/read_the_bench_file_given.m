clear; close all; clc;
fid = fopen('bench.txt','r');
bstr=[];
tline = fgets(fid);
while ischar(tline)
 bstr=[bstr,tline];
 tline = fgets(fid);
end
fclose(fid);
bstr,
