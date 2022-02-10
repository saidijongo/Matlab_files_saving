
close all; clear all;

% Read an Image
I = imread('TSOP.png');

% convert to gray scale image
I_g = rgb2gray(I);

% show image
imshow(I_g)
