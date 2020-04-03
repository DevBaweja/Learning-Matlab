%% Median value of array

%% For Vector
% if x is empty matrix 
x = []
mean(x) % will give NaN

x = floor(rand(1,10)*10);

m = median(x);
% it will return median of all element of the row vector
% if length of x is odd then median is present in x
% ie element at (n+1)/2
% if length of x is even then median is indirectly calculated
% ie average of element at n/2 and (n/2)+1 

%% For Matrix
x = floor(rand(3,3)*10);

m = median(x);
% it will return row vector 
% treating column of matrix as row vector

% as column is treated as row vector
% here median is across column
% if you want it to across rows then apply
median(x')

%%  or we can do
% default case
% Syntax M = median(A,dim)
median(x,1) % is for column wise and return row vector

median(x,2) % is for row wise and return column vector

% as row is treated as row vector
% return column vector

%% To calculate absolute median
% invalid statement