x  = linspace(1,100,20);
y = sqrt(x);
z = sqrt(y);
%%
% hold on to retain previous graph 
hold on;
% also we can use hold off to default it

%%
% in plot function vector must be of same length
plot(x,y);

%%
% we can also specify red (r) dashed (--) line with a circle (o) as a marker.
% line specification
plot(x,z,'r--o');

%%
 plot(z,'b-*');
% uses the vector values as the y-axis data and sets the x-axis data to range from 1 to n
% use close all command to close any figure
% we cannot plot matrix 

%% 
% you can also define extra properties like LineWidth
plot(x,y,'ro-','LineWidth',5)