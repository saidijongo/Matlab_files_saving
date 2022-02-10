% This file gets the fourier transfrom of a pulse
% 
% Created By: JCBRO Labs
% Date: 7/09/2015
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com

close all; clear all;

syms t;

a = heaviside(t + 0.5);

ezplot(a,[-5 5]);

a = heaviside(t + 0.5) - heaviside(t - 0.5);
figure; ezplot(a,[-3 3]);

b = fourier(a);

disp(b);

pretty(b);

figure; ezplot(b,[-50 50]);axis([-50 50 -1 2]);

