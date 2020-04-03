data = rand(7,4)
% To get multiple row or column use :
x = data(2,:)
y = data(:,3)
% full extraction
temp = data(:,:)

multi = data(2:6,2:4)
multisub = data(2:2:6,2:4)