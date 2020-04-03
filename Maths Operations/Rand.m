% RAND
% RANDN
% RANDPERM
% RANDI
% Random Numbers

%% RAND 
% rand as pre defined variables gives it value as an random number
rand
% rand function will give 1x1 value
rand()
% rand function will generate number in interval (0,1)
rand(3)

% taking row vector input with real elements
rand([3 4])
% cloning size 
rand(size(a))
rand([2 3 4])
% its create 3d matrix
rand(1,3)
% rand function does Uniform distribution
rand(3,'single')
rand(3,'double') % default
% single or double precision
% any of input type will work
% its type can be checked class function
a = rand([1 2 3],'single')
% cloning type
rand(3,'like',a);
% cloning size ans type
rand(size(a),'like',a);

%% RANDN
randn(3)
% randn function does Normal distribution
% Uniform and Normal(Gaussian) distribution are part of 
% Continous Random Variable
% rand and randn syntax are exactly similar

% rand gives result in range (0,1)
% to change it to (a,b)

