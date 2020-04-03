%% Sum of value of array
% (xi)

%% For Vector
% if x is empty matrix 
x = []
sum(x) % will give zero

x = floor(rand(1,10)*10);

s = sum(x);
% it will return sum of all element of the row vector
% it cannot give index as all the elements are taking part in calculating
% sum of that vector

%% For Matrix
x = floor(rand(3,3)*10);

s = sum(x);
% it will return row vector 
% treating column of matrix as row vector

% as column is treated as row vector
% here sum is calculated across column
% if you want it to across rows then apply
sum(x')
% it will return row vector
% but sum(x,2) will return column vector
% sum(x')' will give same output

%% Multidimension
a = randi(3,3,3,3)

sum(a)
% If A is a multidimensional array, 
% then sum(A) operates along the array page dimension
% treating the column elements as vectors. 

sum(sum(a))
% then it will treat page dimension as vector 

sum(sum(sum(a)))
% will combine page dimension into single element

%% Specify vector dimension

x = ones(4,3,2)
sum(x,[1 2])
sum(x,[2 3])
sum(x,[1 3])
% 1 - column as vector
% 2 - row as vector
% 3 - page as vector

% absolute sum
sum(x,[1 2 3])

%%  or we can do
% default case
% Syntax S = sum(A,dim)
sum(x,1) % is for column wise and return row vector

sum(x,2) % is for row wise and return column vector

% if x is multi dimension 
sum(x,3)
% it is calculated along pages

%% To calculate absolute sum
sum(sum(x))
% sum(x) will give row vector in which column wise sum is calculated
% and then mean will be calculated on row vector will give absolute sum

sum(x,'all')
% it will give absolute sum of all elements

% if x is matrix
sum(x,[1 2])
% if x is multi dimension
sum(x,[1 2 3])
% sum is calculated along all dimension

%% Others Flags
% any above syntax will works

% outtype can be used for to get specified type of class
% default,double,native

a = int32(magic(3));
sum(a,'native') % to retain type
sum(a,'default') % default type is double
sum(a,'double') % explicit mentioning double

% nanflag can be used to include or omit NaN value
% includenan,omitnan
a = [0/0 1 2;2 3 0/0;NaN NaN 2]
sum(a)
% it will give NaN values
sum(a,'includenan') % default
sum(a,'omitnan')

a = int32([0/0 1 2;2 3 0/0;NaN NaN 2])
sum(a,'all','native','omitnan')