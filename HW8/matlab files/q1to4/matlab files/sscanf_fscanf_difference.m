fid = fopen('bench.txt','r');
k = 0;
while ~feof(fid)
 curr = fscanf(fid,'%c',1);
 % Read data from text file
 if ~isempty(curr)
 k = k+1;
 bstr(k) = curr;
 end
end
fclose(fid);bstr,
[A,n,errmsg] = sscanf(bstr,'%f')

info='0.0735    0.1026    0.1964    0.2728    0.3955    0.3876';
info = sscanf(info,'%f', [2 3])


