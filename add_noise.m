
close all; clear all
Fs = 16000;

n = [0:1/Fs:5];

f = 1000;

x = 1*sin(2*pi*f*n);

% y = awgn(x,30);

y = rand(1,length(x));
y = x + y;

sound(y,Fs);
