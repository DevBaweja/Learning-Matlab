% char datatype
a = 'hello world'  
% size 1X11 
a(2,:) = a(1,:)
% size 2X11
a(3,:)='hi how are you'
% Unable to perform assignment because the size of the left side is 1-by-11 and the size of the right
% side is 1-by-14.

