a = [1:2;3:4]
b = [5:6;7:8]
c = [9:10;11:12]
% while doing these operation inner matrix dimension must agree
a+b % matrix addition
a-b % matrix division

%% matrix multipication
a = [1:2]
b = [4;6]
mat = a*b % matrix multiplication 
% in this case it is necessary to have 
% column of first to be equal to 
d = [1:2;3:4;5:6]
size(a)
size(d)
% a*d will give error
a*d'
% a*d' will be valid

%% element wise multiplication
a = [1:3]
b = [4:6]
mat = a.*b % element wise multiplication
% in this case you need to have dimension must be equal

%% Result
% Not all matrix multiplication aXb bXc can occur element wise multiplication aXb aXb 
% as it is not necessary they have equal dimension

% Not all element wise multiplication aXb aXb can occur matrix multiplication
% as they have equal dimension but it is not necessary that column of first
% match row of second aXb bXc 

% equal size square matrix of both same dimenshion can occur both operation
%  Matrix multiplication aXb bXc 
%  Elemnt wise multiplication

%% Powers ^
a = 2;
a^2

a = rand(2,3)
% a^2 will give error as a is 2X3 matrix 
% for a^n we need to have a as square matrix then only it match condition
% of matrix multiplication aXb bXc 
% also is it same matrix so aXb aXb 
% hence (Comparing first elements)a=b (Comparing second elements)b=c
% a=b=c ie square matrix


a.^2 
% it will compute square of each element of matrix
