% Set Operation Union
% position of elements
% 1 4 7 
% 2 5 8
% 3 6 9 
% C will be greater in length as compare to ia and ib as either presence is
% required
%% For Matrix
x = floor(rand(3,3)*10);
y = floor(rand(3,3)*10);

[C,ia] = union(x,y);
% will return two column vectors
% C is distinct common element in increasing order
% ia is position where these element can be found in first matrix
% Few element might misout as they may be present in second matrix

[C,ia] = union(x,y,'sorted'); % default case
% C is sorted increasing order
% no comment on ia

[C,ia]= union(x,y,'stable');
% C as it is according to position
% hence ia will be sorted as an result
% however few element in c will misout 
% they will occur in last in stable order in C ie according to position in B

[C,ia] = union(x,y,'row');
% it will common full row wise
% C will be row wise full rows 
% ia will be position of that full row in first matrix
% 1 row
% 2 row
% 3 row

%% On Vector
x = floor(rand(1,10)*10)
y = floor(rand(1,10)*10)

union(x,y)
% in this case will give row vector only
[C,ia] = union(x,y,'sorted'); % default case 
% C is common element given in row vector in sorted order
% ia will be still in column vector no comment on order

[C,ia] = union(x,y,'stable');
% C is common element given in row vector according to the position
% ia will be still in column vector hence result in sorted order
% other misout element will be in stable order in C ie according to position in B
    
[C,ia] = union(x,y,'row');
% c will contain all elements of row
% ia will be always one

%% another case extending it two three outputs
x = floor(rand(3*3)*10);
y = floor(rand(3*3)*10);

[C,ia,ib]= union(x,y)
% default is sorted
% C is common element in sorted order 
% ia and ib are positions of that common elements in A and B matrix

[C,ia,ib] = union(x,y,'stable')
% here C will be according to position in A
% ia and ib both are sorted
% ib will be remaining element ie element present in union only due to B
 
[C,ia,ib] = union(x,y,'row');
% it will common full row wise
% C will be row wise full rows also element must be in correct positions
% ia and ib will be position of that full row in A and B

% In case of row sorted
% C is row wise full row in sorted as default
% increasing order(sum of all the element of row)
% if sum is also same then it check element wise 
% also element wise it cannot be similary otherwise it will form same row

% In case of row stable
% ia will be sorted then ib will be sorted