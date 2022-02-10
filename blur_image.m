
close all; clear all;

% read an image
I = imread('cameraman.tif');

% define special filter
radius = 5;
j= fspecial('disk',radius);

% filter an image
k = imfilter(I,j);

% visualize image
imshow(k)



