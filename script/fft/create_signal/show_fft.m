clear;close all;clc;
f = 20;
phase = 0;
fs = 100;
N = 128;
W = 16;

sin_s = create_sin(f,phase,fs,N,W);

sin_fft = abs(fft(double(sin_s),N));
sin_fftshift=fftshift(sin_fft);

%%%%%%%%%%%% show frequency-frequency begin %%%%%%%%%%%%
figure(3);
plot(fs*(-(N/2):(N/2)-1)/N,sin_fftshift);
title('sin frequency-domain(fixed)');
%%%%%%%%%%%% show frequency-frequency  end  %%%%%%%%%%%%

% create_dat('./output/sin_f20_fs100_N128.dat',sin_s);

sin_fft = read_sin('./data/fft_f10_fs100_3.txt');

sin_fftshift=fftshift(abs(sin_fft));
%%%%%%%%%%%% show frequency-frequency begin %%%%%%%%%%%%
figure(4);
plot(fs*(-(N/2):(N/2)-1)/N,sin_fftshift);
title('sin frequency-domain(fpga)');
%%%%%%%%%%% show frequency-frequency  end  %%%%%%%%%%%%


