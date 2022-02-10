
% Choose solver and set model workspace to this function
opt = simset('solver','ode4','SrcWorkspace','Current');

% yout is ouputs of all out ports applied
[tout,xout,yout] = sim('editor_model',[0 10],opt);

plot(yout(:,1));figure;plot(yout(:,2));figure;plot(yout(:,3));

