%% Average or mean value of array
% (xi)/N
%  mean is assumed to have the usual normalization factor N

%% For Vector
% if x is empty matrix 
x = []
mean(x) % will give NaN

x = floor(rand(1,10)*10);

m = mean(x);
% it will return mean of all element of the row vector
% it cannot give index as all the elements are taking part in calculating
% mean of that vector

%% For Matrix
x = floor(rand(3,3)*10);

m = mean(x);
% it will return row vector 
% treating column of matrix as row vector

% as column is treated as row vector
% here mean is calculated across column
% if you want it to across rows then apply
mean(x')

%%  or we can do
% default case
% Syntax M = mean(A,dim)
mean(x,1) % is for column wise and return row vector

mean(x,2) % is for row wise and return column vector

% as row is treated as row vector
% return column vector

%% To calculate absolute mean
mean(mean(x))
% mean(x) will give row vector in which column wise mean is calculated
% and then mean will be calculated on row vector will give absolute mean
