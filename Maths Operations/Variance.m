%% Variance is squared deviation of numbers from its average ie mean
% ((xi - mean)^2)/(N-1) when w=0  (Default)
% ((xi - mean)^2)/N  when w=1

% another term associated with variance is standard deviation is root of
% variance itself

%% For mean to variance
x = floor(rand(1,10)*10);
x = x-mean(x);
x = x.^2;
v = mean(x)

% is same as
x = floor(rand(1,10)*10);
v = var(x,1) 
% weight is consider one as to get N normalization in variance

%% For Vector
x = floor(rand(1,10)*10);

v = var(x);
% it will return variance of the row vector

%% For Matrix
v = floor(rand(3,3)*10);

v = var(x);
% it will return row vector 
% treating column of matrix as row vector

% as column is treated as row vector
% here var is calculated across column
% if you want it to across rows then apply
var(x')

%%  or we can do
% default case
% Syntax V = var(A,w,dim)
var(x,0,1) % is for column wise and return row vector

var(x,0,2) % is for row wise and return column vector

% as row is treated as row vector
% return column vector

%% To calculate absolute var
var(var(x))
% will ne unable to provide correct ans
x = floor(rand(3,3)*10);
v1 = x-mean(mean(x))
v1 = v1.^2;
v = mean(mean(v1))

% will be the absolyte variance of the matrix

%% Standard Deviation
% Syntax V = var(A,w,dim)

% it is just root of variance