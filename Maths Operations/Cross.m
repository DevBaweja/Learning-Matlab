% Cross Product 
% Perpendicular to given vectors which can be checked by dot product

%% For Vector
% a and b are vector of same size
a = randi(3,1,3)
b = randi(3,1,3)
c = cross(a,b)
% gives vector perpendicular to each other
dot(c,a) == 0
dot(b,a) == 0

%% For Matrix
% a and b are matrix of same size
a = randi(3,3)
b = randi(3,3)
cross(a,b)
% Considering column of matrix as row vector
% and giving vectors which is perpendicular to 
% corresponding column in matrix

% as column is treated as row vector
% here cross product is calculated across column
% if you want it to across rows then apply
cross(a',b')
% it will contain row wise cross product
%  in corresponding column of matrix
% cross(a,b,2) will contain row wise cross product 
% in corresponding row of matrix
% cross(a',b')' will give same output

%%  or we can do
% default case
% dimenshion can be mentioned
cross(x,y,1) % is for column wise and row wise column vectors of cross product

% as column is treated as row vector
% return row wise column vectors

cross(x,y,2) % is for row wise and return column wise row vectors of cross product

% as row is treated as row vector
% return column wise row vectors

% in case of cross product matrix used must contain atleast on dimension of
% length 3