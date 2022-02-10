% This file blurs an image
% 
% Created By: JCBRO Labs
% Date: 23/07/2015
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com


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



