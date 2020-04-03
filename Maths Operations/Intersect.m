% Set operation intersect
% position of elements
% 1 4 7 
% 2 5 8
% 3 6 9 
% C ia ib are of same length as element is present in both matrix
%% On Matrix

x = floor(rand(3,3)*10);
y = floor(rand(3,3)*10);
% Taking any two matrix of aXb cXd 
intersect(x,y) % intersect(x,y,'sorted')
% will give column vector containing distinct common elements 
[C,ia] = intersect(x,y);
% will return two column vectors
% C is distinct common element in increasing order
% ia is position where these element can be found in first matrix

[C,ia] = intersect(x,y,'sorted'); % default case
% C is sorted increasing order
% no comment on ia

[C,ia]= intersect(x,y,'stable');
% C as it is according to position
% hence ia will be sorted as an result

[C,ia] = intersect(x,y,'row');
% it will common full row wise
% C will be row wise full rows also element must be in correct positions
% ia will be position of that full row
% 1 row
% 2 row
% 3 row

%% On Vector
x = floor(rand(1,10)*10)
y = floor(rand(1,10)*10)

intersect(x,y)
% in this case will give row vector only
[C,ia] = intersect(x,y,'sorted'); % default case 
% C is common element given in row vector in sorted order
% ia will be still in column vector no comment on order

[C,ia] = intersect(x,y,'stable');
% C is common element given in row vector according to the position
% ia will be still in column vector hence result in sorted order

[C,ia] = intersect(x,y,'row');
% if x=y only then result is obtained 
% c will contain all elements of row
% ia will be always one

%% another case extending it two three outputs
x = floor(rand(3*3)*10);
y = floor(rand(3*3)*10);

[C,ia,ib]= intersect(x,y)
% default is sorted
% C is common element in sorted order 
% ia and ib are positions of that common elements in A and B matrix
% respectively. Positions are as given
%   1   4   7
%   2   5   8   
%   3   6   9

[C,ia,ib] = intersect(x,y,'stable')
% here C will be according to position in A
% as result ia will be sorted 
% no comment on ib

[C,ib,ia] = intersect(y,x,'stable');
% reverse to get position according to B
% to make ib as sorted
 
[C,ia,ib] = intersect(x,y,'row');
% it will common full row wise
% C will be row wise full rows also element must be in correct positions
% ia and ib will be position of that full row in A and B

% You can specify either sorted or stable but not both.
% With row you can also use sorted and stable
% in case of multiple row is same
% C is row wise full row in sorted as default
% increasing order(sum of all the element of row)
% if sum is also same then it check element wise 
% also element wise it cannot be similary otherwise it will form same row

% in case of stable C is according to position
% hence ia is sorted in nature