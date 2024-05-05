function sin_s = create_sin(f,phase,fs,N,W)
dt = (1:N)/fs;
sin_f = sin( 2*pi*f*dt+phase);

%%%%%%%%%%%% show time domain begin %%%%%%%%%%%%
figure(1);
plot(sin_f);
title('sin time-domain');
%%%%%%%%%%%% show time domain  end  %%%%%%%%%%%%

sin_fft = abs(fft(sin_f,N));
sin_fftshift=fftshift(sin_fft);

%%%%%%%%%%%% show frequency-frequency begin %%%%%%%%%%%%
figure(2);
plot(fs*(-(N/2):(N/2)-1)/N,sin_fftshift);
title('sin frequency-domain');
%%%%%%%%%%%% show frequency-frequency  end  %%%%%%%%%%%%
sin_s = fi(sin_f,1,W,W-2);
end