function create_dat(filename,data)
[fs,msg] = fopen(filename,'w');
if fs == -1 
   disp(msg); 
end
[~,c] = size(data);
for idx = 1:c
    fprintf(fs,"%s\r\n",hex(data(idx)));
end
fclose(fs);
end