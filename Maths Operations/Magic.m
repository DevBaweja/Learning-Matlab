% array can be initialise as [;;] 
% using rand() or linspace(,,) or using : make life easier
% we can use magic() it will take one input unlike rand()

m = magic(4)
 % Range [1,n^2] with equal row and column sums
 sum(m,1)
 % treating column as vector gives us column sum
 sum(m,2) 
 % treatung row as vector gives us row sum
