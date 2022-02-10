% This file invokes simulink from matlab editor
% 
% Created By: JCBRO Labs
% Date: 13/04/2017
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com
close all; clear all;

% Choose solver and set model workspace to this function
opt = simset('solver','ode4','SrcWorkspace','Current');

% yout is ouputs of all out ports applied
[tout,xout,yout] = sim('editor_model',[0 10],opt);

plot(yout(:,1));figure;plot(yout(:,2));figure;plot(yout(:,3));

