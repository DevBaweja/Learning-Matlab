%% Most frequent values in array
% Simply same number occuring maximum number of times
% Number is always in given set of values
% Frequency Counter

%% For Vector
% if x is empty matrix 
x = []
mode(x) % will give NaN

x = floor(rand(1,10)*10);

m = mode(x)
% it will return mohe row vector

% When there are multiple values occurring equally frequently
% mode returns the smallest of those values
[M,F,C] = mode(x);

% M is most frequent element 1X1
% F is its frequency 1X1
% C will be 1X1 cell array containing all the other mode in sorted way

%% For Matrix
x = floor(rand(3,3)*10);

m = mode(x);
% it will return row vector 
% treating column of matrix as row vector

[M,F,C] = mode(x);

% M will be row vector containing  most frequent element
% F will be row vector containing its frequency
% C will be row vector cell array containing all the other mode in sorted way

% as column is treated as row vector
% here mode is across column
% if you want it to across rows then apply
mode(x')

%%  or we can do
% default case
% Syntax M = mode(A,dim)
[M,F,C] = mode(x,1) % is for column wise and return row vector

[M,F,C] = mode(x,2) % is for row wise and return column vector

% as row is treated as row vector
% return column vector

%% To calculate absolute mode

% in order to do this we need M as well as its frequency