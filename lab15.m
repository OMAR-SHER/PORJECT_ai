[x,fs]=audioread('sample3.wav');
N=length(x);
%vlcplayer=audioplayer(x,fs);
%vlcplayer.play;
t=fft(x,N);
X=fftshift(t);
f=-fs/2:fs/N:(fs/2-fs/N);
%figure(1)
Xr=zeros(1,N);
Xr((N/4)+1:(3*N/4))= X((N/4)+1:(3*N/4));   %%FORMULA%axes(handles.axes2);
subplot(1,2,1);
plot(f/2,abs(Xr));
title(' compressed signal')
[y,Fs] = audioread('sample3.wav'); % y samples from audio with Fs sampling frequency in [Hz].
sound(y,Fs);% listen your audio input
N = length(y); % sample lenth
slength = N/Fs; % total time span of audio signal
t = linspace(0, N/Fs, N);
subplot(1,2,2);
plot(t, y); % pplots the audio
title('size of compressed signal')
