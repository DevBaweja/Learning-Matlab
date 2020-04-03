%%
% fs is sampling frequency of the audio signal
fs = 10;
%  will represent the times when the audio signal was sampled
t = 0:1/fs:20;
% y will represent the audio signal amplitude at each sampled time.
y = sin(1.8*2*pi*t)+sin(2.1*2*pi*t);
% y vector contains the sum of two sine waves with similar frequencies, gives 'beat' pattern
plot(t,y)

%%
%  Fourier transform returns information about the frequency content of the signal
yfft = fft(y);
% numel function to return the number of elements in an array
n = numel(y);
% The f variable will represent the frequencies that correspond to the values in yfft
f = 0:fs/n:fs*(n-1)/n;
%  fft are complex numbers. To plot their magnitude use abs
plot(f,abs(yfft))