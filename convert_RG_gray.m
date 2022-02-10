% This file converts RGB image to grayscale image
% 
% Created By: JCBRO Labs
% Date: 26/06/2015
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com

close all; clear all;

% Read an Image
I = imread('TSOP.png');

% convert to gray scale image
I_g = rgb2gray(I);

% show image
imshow(I_g)