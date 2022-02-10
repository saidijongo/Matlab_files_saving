% This file finds impulse response of the system

close all; clear all;
N = 40; %length of the sequence
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
% calculating the impulse response of the system
y = impz(num,den,N);

% Plotting the sequency

stem(y);
xlabel('Discrete Time');
ylabel('Amplitude');
title('Impulse Response of the filter');
