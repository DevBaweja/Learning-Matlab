%% RANDPERM
randperm(10)
% row vector containing random permutation of integers from [1,n]
% without repeating elements

randperm(10,3)
% containing k unique integers selected randomly from [1,n] 
% without repeating element

% it ranges from [1,n]
% to change it add logic range [a,b]
(a-1) + randperm(b-a+1)

%% RANDI

randi(10)
% random integer in range of [1,n]

randi(10,3)
% random integer in range of [1,n] making 3x3 matrix
randi(10,3,4)
% 3x4 matrix containig integers in range of 1 to 10
randi(10,3,4,5)

% multiple input
randi(10,[3 4])
randi(10,[3 4 5])
% 3d matrix

% cloning size
randi(10,size(a))

% multiple input syntax with classname 
randi(10,3,'single')
randi(10,[3 4 5],'double')
% classname can be 'single', 'double', 
% int8,uint8,int16,uint16,int32,uint32

% multiple input syntax with like
% cloning type
randi(10,3,'like',a)
randi(10,3,4,5,'like',a)

% cloning size and type
randi(10,size(a),'like',a)

% giving range in between with any input syntax
randi([imin imax],3)
randi([imin imax],size(a),'like',a)
