%% eq , == 
% Equality
% Used for comparision it will return 0 or 1
% logical type is returned

% no as such difference in vector or matrix
% must be same size
a = randi(3,3)
b = randi(3,3)
a==b
% gives logical array of
%% Logical operator == , > , >= , < , <= , ~=
% != is replaced by ~=
x = linspace(0,1,5);
y = 0:.25:1;
% in case of vector or matrix of same dimension
x == y 

%%
v = pi > 3
% returns 0(false) or 1(true) logic

% also you can compare matrix with single scalar value
[5 10 15] > 12

%%
load datafile.mat data
v1 = data(:,4);
value = v1 > 3

%%
load datafile.mat data
v1 = data(:,4);
v2 = data(:,3);
v  = v1 > v2
% The two arrays must be the same size 

%% 

