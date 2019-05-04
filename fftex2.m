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