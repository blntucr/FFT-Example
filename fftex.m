clc
clear all
f = 5; %frequency
fs = 44100; %sampling freq
t = [0:1/fs:1]; %time vector
s1 = 5*sin((2*pi*f*t)+(pi/2)); %first signal
s2 = 7*cos(2*pi*f*(t-0.05)); %second signal
ang2 = angle(s2); %phase
[row column] = size(s1);
n = column; %lenght of s1 and s2
F=(-(n-1)/2:n/2)*(fs/n); %creating frequency axis
subplot(2,1,1);plot(F,abs(s1)); %plot vs freq
subplot(2,1,2);plot(F,abs(s2)); %plot vs freq



fs = 44100;
t=[0:1/fs:1]; %time vector
s = sin(2*pi*100*t) + sin(2*pi*50*t); %sum of sinusoids
ffts = fft(s); %equals to size of s by default
subplot(2,1,1);plot(abs(ffts);
subplot(2,1,2);plot(angle(ffts));



b= [0.058314410978206
 0.060284242199075
 0.082066666909259
 0.100830178780903
 0.113534654382583
 0.118060205483520
 0.113534654382583
 0.100830178780903
 0.082066666909259
 0.060284242199075
 0.058314410978206]; %coefficient vector
fftb = fft(b);


fs = 44100;
t=[0:1/fs:1];
s = sin(2*pi*100*t) + sin(2*pi*50*t);
ffts = fft(s,11); %equals to size of s by default
b= [0.058314410978206
 0.060284242199075
 0.082066666909259
 0.100830178780903
 0.113534654382583
 0.118060205483520
 0.113534654382583
 0.100830178780903
 0.082066666909259
 0.060284242199075
 0.058314410978206];
fftb = fft(b);
multiplied = fftb*ffts;
inverse = ifft(multiplied);
subplot(2,1,1);plot(abs(inverse));
subplot(2,1,2);plot(angle(inverse));