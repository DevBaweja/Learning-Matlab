%% For Vector

x = floor(rand(1,10)*10);

maximum = max(x);
minimum = min(x);
% it will return max or min element of the row vector

[maximum,maxindex] = max(x);
[minimum,minindex] = min(x);
% it will also give index
% position 
%   1 2 3 4 5 6 7 8 9 10
% as there is only one row vector

%% For Matrix
x = floor(rand(3,3)*10);

maximum = max(x);
minimum = min(x);
% it will return row vector 
% treating column of matrix as row vector

[maximum,maxindex] = max(x);
[minimum,minindex] = min(x);
% it will also give index
% position in that particular column considering it as row vector 
%   1   1   1
%   2   2   2
%   3   3   3
% as column is treated as row vector
% here max or min is calculated across column
% if you want it to across rows then apply
max(x')

%%  or we can do
% default case
% Syntax M = max(A,[],dim);

max(x,[],1) % is for column wise and return row vector

max(x,[],2) % is for row wise and return column vector

[maximum,maxindex] = max(x,[],2);
[minimum,minindex] = min(x,[],2);
% position in that particular row considering it as row vector 
%   1   2   3
%   1   2   3
%   1   2   3
% as row is treated as row vector
% return column vector

%% To calculate absolute max or min use
max(max(x))
% max(x) will give row vector in which column wise maximum is calculated
% and then max will be calculated on row vector will give maximum element
