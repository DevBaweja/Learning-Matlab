% it round off all the elements
v = rand(1,5)*10
rv = round(v(2:4))

data = rand(7,4)*10
rdata = round(data)-
partialdata = round(data(2:2:end-1,1:2:3))

% it floor all the elements
data = rand(7,4)*10
rdata = round(data)
fdata = floor(data)

