% Dot Product

%% For Vector
% a and b are vector of same size
a = randi(3,1,3)
b = randi(3,1,3)
dot(a,b)
% gives scalar multiplication
% first do elementwise multiple and then sum 
c = a.*b
sum(c)
% dot product of vector will be zero if it is perpendicular to each other

%% For Matrix
% a and b are matrix of same size
a = randi(3,3)
b = randi(3,3)
dot(a,b)
% Considering column of matrix as row vector
% and doing operation as row vector

% as column is treated as row vector
% here dot product is calculated across column
% if you want it to across rows then apply
dot(a',b')
% it will return row vector
% but dot(a,b,2) will return column vector
% dot(a',b')' will give same output

%%  or we can do
% default case
% dimenshion can be mentioned
dot(x,y,1) % is for column wise and return row vector

% as column is treated as row vector
% return row vector

dot(x,y,2) % is for row wise and return column vector

% as row is treated as row vector
% return column vector