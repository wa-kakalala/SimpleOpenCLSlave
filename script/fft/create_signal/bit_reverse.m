function value = bit_reverse(v,N)
    v_str = dec2bin(v);
    if( length(v_str) < N) 
        for i=1:N-length(v_str)
            v_str = ['0',v_str];
        end
    end
    v_str = v_str(1:N);
    value = bin2dec(reverse(v_str));
end