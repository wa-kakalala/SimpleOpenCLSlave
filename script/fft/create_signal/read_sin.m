function sin_s = read_sin(filename)
    raw_data = load(filename);
    for i=1:length(raw_data)
        if(raw_data(i) > 2^16/2-1)  %8位宽的数据有符号数据取值范围[-128,127],(2^8/2-1=127),根据实际位宽修改
            raw_data(i) = raw_data(i) - 2^16;
        else
            raw_data(i) = raw_data(i);
        end
    raw_data_re = raw_data(1:128);
    raw_data_im = raw_data(129:256);
    data_im = zeros(1,128);
    data_re = zeros(1,128);
    
    for idx = 0:127
        i = bit_reverse(idx,7);
        data_re(1,i+1) = raw_data_im(idx+1);
        data_im(1,i+1) = raw_data_re(idx+1);
    end 
    
    sin_s = data_re + 1j*data_im;
end