% Set Operation setdiff

%% For Matrix
x = floor(rand(3,3)*10);
y = floor(rand(3,3)*10);

[C,ia] = setdiff(x,y);
% will return two column vectors
% C will be element present in a And absent in b
% ia will be its position
% stable and sorted are valid

[C,ia] = setdiff(x,y,'row')
% it will present row in a but absent in b
% C will be row wise full rows

% row sorted and row stable are valid
%% For Vector

[C,ia] = setdiff(x,y);
% C will row vector
% ia will be its position
% stable and sorted are valid

% row is also valid

%% another case extending it two three outputs
% no case is formed

[C ia ib] = setdiff(x,y);
% is invalid as ib cannot be an output
% as it is absent in b