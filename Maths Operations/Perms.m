% it is used to calculate permutation of element in matrix

% if a is vector it will return matrix with rows as total permutations
% and n number of columns
a = [1 2 3];
perms(a)

% if a is matrix it will treat all element as vector
% and give all the permutation as rows and n number of column
% where n is total number of element in matrix is aXb
a = [1 2;3 4];
perms(a)
% returns column wise permutation of n element in an row

% distinct permutation are unremoved 