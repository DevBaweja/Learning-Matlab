% prod is used to return products of elements 


%% For Vector
% if x is empty matrix 
x = []
prod(x) % will give zero
x = [1:5];
% it will return products of all element of the row vector
% it cannot give index as all the elements are taking part in calculating
% product of that vector
prod(x)


%% For Matrix
x = floor(rand(3,3)*10);

p = prod(x);
% it will return row vector 
% treating column of matrix as row vector

% as column is treated as row vector
% here product is calculated across column
% if you want it to across rows then apply
prod(x')
% it will return row vector
% but prod(x,2) will return column vector
% prod(x')' will give same output

%% Multidimension
a = randi(3,3,3,3)

prod(a)
% If A is a multidimensional array, 
% then prod(A) operates along the array page dimension
% treating the column elements as vectors. 

prod(prod(a))
% then it will treat page dimension as vector 

prod(prod(prod(a)))
% will combine page dimension into single element

%% Specify vector dimension

x = randi(10,4,3,2)
prod(x,[1 2])
prod(x,[2 3])
prod(x,[1 3])
    % 1 - column as vector
    % 2 - row as vector
    % 3 - page as vector

% absolute sum
prod(x,[1 2 3])

%%  or we can do
% default case
prod(x,1) % is for column wise and return row vector

prod(x,2) % is for row wise and return column vector

% if x is multi dimension 
prod(x,3)
% it is calculated along pages

%% To calculate absolute prod
prod(prod(x))
% prod(x) will give row vector in which column wise prod is calculated
% and then mean will be calculated on row vector will give absolute sum

prod(x,'all')
% it will also give absolute product of all elements

% if x is matrix
prod(x,[1 2])
prod(x,[1 2 3])
% prod is calculated along all dimension

%% Others Flags
% any above syntax will works

% outtype can be used for to get specified type of class
% default,double,native

a = int32(magic(3));
prod(a,'native') % to retain type
prod(a,'default') % default type is double
prod(a,'double') % explicit mentioning double


% nanflag can be used to include or omit NaN value
% includenan,omitnan
a = [0/0 1 2;2 3 0/0;NaN NaN 2]
prod(a)
% it will give NaN values
sum(a,'includenan') % default
sum(a,'omitnan')

a = int32([0/0 1 2;2 3 0/0;NaN NaN 2])
sum(a,'all','native','omitnan')