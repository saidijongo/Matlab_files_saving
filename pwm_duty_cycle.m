% this file generate PWM signal of desired duty cycle
% 
% Created By: JCBRO Labs
% Date: 28/04/2017
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com
close all; clear all;

f = 7; % Frequency of the signal
fs = 1000;  % Sampling Frequency
t = 1.5;    % duration of signal in sec
n = [0:1/fs:t];

cycles = t*f;
x = ones(1,length(n));
duty = 20;
oc_samp = fs/f; % samples in one cycle
on_samp = (oc_samp * duty)/100;
off_samp = oc_samp - on_samp;

temp = 0;
for i = 1 : ceil(cycles)
    x(temp+on_samp+1:i*oc_samp) = 0;
    temp = temp + oc_samp;
   
end

plot(n,x(1:length(n)),'LineWidth',2);ylim([-1 1.5]);
% stem(n,x); ylim([-1.5 1.5]);

